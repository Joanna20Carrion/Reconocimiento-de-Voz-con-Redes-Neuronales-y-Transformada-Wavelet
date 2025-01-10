clc;
clear all;
close all;

% Número de muestras 
n = 130;  
palabras = {'Sumar', 'Restar', 'Multiplicar', 'Dividir'};

% Data de Entrenamiento
X = [];
Y = cell(0, 1); 

for i = 1:length(palabras)
    palabra = palabras{i};
    
    for m = 1:n
        % Obtener grabación de muestra
        audio = [palabra,'_', sprintf('%02d', m), '.wav'];
        [x, Fs] = audioread(fullfile('Audios', audio));
        
        x = x / max(abs(x)); % Normalizar la señal

        [h0, h1, f0, f1] = wfilters('db25'); % Generación de filtros de la familia wavelet Daubechies de orden 25

        % Aplicar la función dwwt
        [x11, x12] = dwwt(x, h0, h1); % NIVEL 1
        
        [x21, x22] = dwwt(x11,h0,h1); % NIVEL 2
        [x23, x24] = dwwt(x12,h0,h1); % NIVEL 2

        [x31, x32] = dwwt(x21,h0,h1); % NIVEL 3
        [x33, x34] = dwwt(x22,h0,h1); % NIVEL 3
        [x35, x36] = dwwt(x23,h0,h1); % NIVEL 3
        [x37, x38] = dwwt(x24,h0,h1); % NIVEL 3

        [x41, x42] = dwwt(x31,h0,h1); % NIVEL 4
        [x43, x44] = dwwt(x32,h0,h1); % NIVEL 4
        [x45, x46] = dwwt(x33,h0,h1); % NIVEL 4
        [x47, x48] = dwwt(x34,h0,h1); % NIVEL 4
        [x49, x410] = dwwt(x35,h0,h1); % NIVEL 4
        [x411, x412] = dwwt(x36,h0,h1); % NIVEL 4
        [x413, x414] = dwwt(x37,h0,h1); % NIVEL 4
        [x415, x416] = dwwt(x38,h0,h1); % NIVEL 4

        [x51, x52] = dwwt(x41,h0,h1); % NIVEL 5
        [x53, x54] = dwwt(x42,h0,h1); % NIVEL 5
        [x55, x56] = dwwt(x43,h0,h1); % NIVEL 5
        [x57, x58] = dwwt(x44,h0,h1); % NIVEL 5
        [x59, x510] = dwwt(x45,h0,h1); % NIVEL 5
        [x511, x512] = dwwt(x46,h0,h1); % NIVEL 5
        [x513, x514] = dwwt(x47,h0,h1); % NIVEL 5
        [x515, x516] = dwwt(x48,h0,h1); % NIVEL 5
        [x517, x518] = dwwt(x49,h0,h1); % NIVEL 5
        [x519, x520] = dwwt(x410,h0,h1); % NIVEL 5
        [x521, x522] = dwwt(x411,h0,h1); % NIVEL 5
        [x523, x524] = dwwt(x412,h0,h1); % NIVEL 5
        [x525, x526] = dwwt(x413,h0,h1); % NIVEL 5
        [x527, x528] = dwwt(x414,h0,h1); % NIVEL 5
        [x529, x530] = dwwt(x415,h0,h1); % NIVEL 5
        [x531, x532] = dwwt(x416,h0,h1); % NIVEL 5
        
        [x61, x62] = dwwt(x51,h0,h1); % NIVEL 6
        [x63, x64] = dwwt(x52,h0,h1); % NIVEL 6
        [x65, x66] = dwwt(x53,h0,h1); % NIVEL 6
        [x67, x68] = dwwt(x54,h0,h1); % NIVEL 6
        [x69, x610] = dwwt(x55,h0,h1); % NIVEL 6
        [x611, x612] = dwwt(x56,h0,h1); % NIVEL 6
        [x613, x614] = dwwt(x57,h0,h1); % NIVEL 6
        [x615, x616] = dwwt(x58,h0,h1); % NIVEL 6
        [x617, x618] = dwwt(x59,h0,h1); % NIVEL 6
        [x619, x620] = dwwt(x510,h0,h1); % NIVEL 6
        [x621, x622] = dwwt(x511,h0,h1); % NIVEL 6
        [x623, x624] = dwwt(x512,h0,h1); % NIVEL 6
        [x625, x626] = dwwt(x513,h0,h1); % NIVEL 6
        [x627, x628] = dwwt(x514,h0,h1); % NIVEL 6
        [x629, x630] = dwwt(x515,h0,h1); % NIVEL 6
        [x631, x632] = dwwt(x516,h0,h1); % NIVEL 6
        [x633, x634] = dwwt(x517,h0,h1); % NIVEL 6
        [x635, x636] = dwwt(x518,h0,h1); % NIVEL 6
        [x637, x638] = dwwt(x519,h0,h1); % NIVEL 6
        [x639, x640] = dwwt(x520,h0,h1); % NIVEL 6
        [x641, x642] = dwwt(x521,h0,h1); % NIVEL 6
        [x643, x644] = dwwt(x522,h0,h1); % NIVEL 6
        [x645, x646] = dwwt(x523,h0,h1); % NIVEL 6
        [x647, x648] = dwwt(x524,h0,h1); % NIVEL 6
        [x649, x650] = dwwt(x525,h0,h1); % NIVEL 6
        [x651, x652] = dwwt(x526,h0,h1); % NIVEL 6
        [x653, x654] = dwwt(x527,h0,h1); % NIVEL 6
        [x655, x656] = dwwt(x528,h0,h1); % NIVEL 6
        [x657, x658] = dwwt(x529,h0,h1); % NIVEL 6
        [x659, x660] = dwwt(x530,h0,h1); % NIVEL 6
        [x661, x662] = dwwt(x531,h0,h1); % NIVEL 6
        [x663, x664] = dwwt(x532,h0,h1); % NIVEL 6

        % Calcular la energía de los coeficientes
        E1 = sum(x61.^2); % Energía del nivel 6, parte 1
        E2 = sum(x62.^2); % Energía del nivel 6, parte 2
        E3 = sum(x63.^2); %ENERGIA 3
        E4 = sum(x64.^2); %ENERGIA 4
        E5 = sum(x65.^2); %ENERGIA 5
        E6 = sum(x66.^2); %ENERGIA 6
        E7 = sum(x67.^2); %ENERGIA 7
        E8 = sum(x68.^2); %ENERGIA 8
        E9 = sum(x69.^2); %ENERGIA 9
        E10 = sum(x610.^2); %ENERGIA 10
        E11 = sum(x611.^2); %ENERGIA 11
        E12 = sum(x612.^2); %ENERGIA 12
        E13 = sum(x613.^2); %ENERGIA 13
        E14 = sum(x614.^2); %ENERGIA 14
        E15 = sum(x615.^2); %ENERGIA 15
        E16 = sum(x616.^2); %ENERGIA 16
        E17 = sum(x617.^2); %ENERGIA 17
        E18 = sum(x618.^2); %ENERGIA 18
        E19 = sum(x619.^2); %ENERGIA 19
        E20 = sum(x620.^2); %ENERGIA 20
        E21 = sum(x621.^2); %ENERGIA 21
        E22 = sum(x622.^2); %ENERGIA 22
        E23 = sum(x623.^2); %ENERGIA 23
        E24 = sum(x624.^2); %ENERGIA 24
        E25 = sum(x625.^2); %ENERGIA 25
        E26 = sum(x626.^2); %ENERGIA 26
        E27 = sum(x627.^2); %ENERGIA 27
        E28 = sum(x628.^2); %ENERGIA 28
        E29 = sum(x629.^2); %ENERGIA 29
        E30 = sum(x630.^2); %ENERGIA 30
        E31 = sum(x631.^2); %ENERGIA 31
        E32 = sum(x632.^2); %ENERGIA 32
        E33 = sum(x633.^2); %ENERGIA 33
        E34 = sum(x634.^2); %ENERGIA 34
        E35 = sum(x635.^2); %ENERGIA 35
        E36 = sum(x636.^2); %ENERGIA 36
        E37 = sum(x637.^2); %ENERGIA 37
        E38 = sum(x638.^2); %ENERGIA 38
        E39 = sum(x639.^2); %ENERGIA 39
        E40 = sum(x640.^2); %ENERGIA 40
        E41 = sum(x641.^2); %ENERGIA 41
        E42 = sum(x642.^2); %ENERGIA 42
        E43 = sum(x643.^2); %ENERGIA 43
        E44 = sum(x644.^2); %ENERGIA 44
        E45 = sum(x645.^2); %ENERGIA 45
        E46 = sum(x646.^2); %ENERGIA 46
        E47 = sum(x647.^2); %ENERGIA 47
        E48 = sum(x648.^2); %ENERGIA 48
        E49 = sum(x649.^2); %ENERGIA 49
        E50 = sum(x650.^2); %ENERGIA 50
        E51 = sum(x651.^2); %ENERGIA 51
        E52 = sum(x652.^2); %ENERGIA 52
        E53 = sum(x653.^2); %ENERGIA 53
        E54 = sum(x654.^2); %ENERGIA 54
        E55 = sum(x655.^2); %ENERGIA 55
        E56 = sum(x656.^2); %ENERGIA 56
        E57 = sum(x657.^2); %ENERGIA 57
        E58 = sum(x658.^2); %ENERGIA 58
        E59 = sum(x659.^2); %ENERGIA 59
        E60 = sum(x660.^2); %ENERGIA 60
        E61 = sum(x661.^2); %ENERGIA 61
        E62 = sum(x662.^2); %ENERGIA 62
        E63 = sum(x663.^2); %ENERGIA 63
        E64 = sum(x664.^2); %ENERGIA 64

        E_Palabras = [E1 E2 E3 E4 E5 E6 E7 E8 E9 10 E11 E12 E13 E14 E15 E16 E17 E18 E19 E20 E21 E22 E23 E24 E25 E26 E27 E28 E29 E30 E31 E32 E33 E34 E35 E36 E37 E38 E39 E40 E41 E42 E43 E44 E45 E46 E47 E48 E49 E50 E51 E52 E53 E54 E55 E56 E57 E58 E59 E60 E61 E62 E63 E64];
        
        % Agregando energías a la Data de Entrenamiento
        X = [X; E_Palabras];
        
        % Agregando salidas respectivas a la Data de Entrenamiento
        Y = [Y; palabra];
    end
end

% Entrenando Support Vector Machine
Modelo = fitcecoc(X,Y);  

partitionedModel = crossval(Modelo, 'KFold', 5);
% Calcula la precisión de la validación
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');

save('TablaModelo.mat', 'Modelo');

% Crea una tabla con los datos de entrenamiento
TablaPalabras = array2table(X, 'VariableNames', {'e1', 'e2', 'e3', 'e4', 'e5', 'e6', 'e7', 'e8', 'e9', 'e10', ...
                                                'e11', 'e12', 'e13', 'e14', 'e15', 'e16', 'e17', 'e18', 'e19', ...
                                                'e20', 'e21', 'e22', 'e23', 'e24', 'e25', 'e26', 'e27', 'e28', ...
                                                'e29', 'e30', 'e31', 'e32', 'e33', 'e34', 'e35', 'e36', 'e37', ...
                                                'e38', 'e39', 'e40', 'e41', 'e42', 'e43', 'e44', 'e45', 'e46', ...
                                                'e47', 'e48', 'e49', 'e50', 'e51', 'e52', 'e53', 'e54', 'e55', ...
                                                'e56', 'e57', 'e58', 'e59', 'e60', 'e61', 'e62', 'e63', 'e64'});
TablaPalabras.etiqueta = Y;  % Añadir las etiquetas

% Guarda la tabla en un archivo .mat
save('TablaPalabras.mat', 'TablaPalabras');