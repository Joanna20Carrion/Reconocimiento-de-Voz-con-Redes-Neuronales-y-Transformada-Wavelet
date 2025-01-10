clear all, clc, close all
%% Genero las tablas para el entrenamiento %% 
% Clases a estimar: sumar, restar, multiplicar y dividir
% Cargo los datos de cada clase
% En la última columna están las etiquetas de cada clase
load TablaPalabras

%Genera la tabla con los datos de cada clase de manera aleatoria

Tdata=[TablaPalabras];
[q,t]=size(Tdata);
ind=randperm(q,q); % Genera aleatorios enteros
for i=1:q
    Tdata(i,:)=Tdata(ind(i),:);
end

Tentrena=Tdata(1:round(q*70/100),:);    % El 70% para el entrenamiento
Tvalida=Tdata(round(q*70/100)+1:end,:); % El 30% para la validación
%% ENTRENO LA RED
[trainedClassifier, validationAccuracy] = trainClassifierSVM(Tentrena);

%% Valido la red con los 30% de datos 
% trainedClassifier es la red entrenada
% ysal es la salida de la red cuando se le ingresa un nuevo dato
[a,b]=size(Tvalida);
yfit=[];
for i=1:a
    T=Tvalida(i,1:end-1); 
    ysal=predict(trainedClassifier, T{:,trainedClassifier.PredictorNames}); 
    yfit = [yfit; ysal];
end
res={Tvalida(:,end),yfit}; % Comparo respuestas 
test=categorical(Tvalida.etiqueta);
yt=categorical(yfit);
[cm,order]=confusionmat(test,yt);

% Grafica la matriz de confusión
plotConfMat_corregido(cm,{'Sumar' 'Restar' 'Multiplicar' 'Dividir'})