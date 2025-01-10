# Reconocimiento de Voz con Redes Neuronales y Transformada Wavelet

## Descripción
Este proyecto desarrolla un sistema robusto de reconocimiento de voz para identificar comandos matemáticos básicos (sumar, restar, multiplicar y dividir). Utiliza técnicas avanzadas de análisis de señales, como la transformada wavelet y redes neuronales, para lograr una alta precisión en la detección, complementado con una interfaz visual interactiva.

## Objetivos
- Identificar comandos de voz mediante procesamiento de señales y aprendizaje profundo.
- Implementar un árbol de descomposición de señales para analizar subbandas de frecuencia.
- Entrenar y validar un modelo de red neuronal para optimizar la detección.

## Requisitos
- **Software:** MATLAB 2023b o superior.
- **Hardware:**
  - Micrófono compatible.
  - Computadora con Windows.
- **Datos:** 130 grabaciones por palabra (sumar, restar, multiplicar y dividir).

## Características principales
- **Interfaz Visual:** 
  - Grabación y reproducción de audios.
  - Visualización de señales en dominios de tiempo y frecuencia.
  - Visualización del árbol de descomposición y matriz de confusión.
- **Procesamiento de Señales:**
  - Transformada wavelet con un árbol de descomposición de 6 niveles.
  - Análisis energético de subbandas.
- **Resultados:** 
  - Precisión del modelo: 99.36%.
  - Baja tasa de error para la mayoría de las palabras.

## Instrucciones de Uso
1. Configura el entorno en MATLAB y asegura un espacio de grabación con poco ruido.
2. Inicia la interfaz visual y ajusta los parámetros de grabación según las necesidades.
3. Graba las palabras objetivo y observa los resultados en tiempo real en la interfaz.
4. Visualiza el análisis energético, el árbol de descomposición y la matriz de confusión.

## Ejemplos de Resultados
- **Matriz de Confusión:**
  Precisión general del modelo: 99.36%.
  
  | Palabra       | Tasa de Error |
  |---------------|---------------|
  | Sumar         | 30%           |
  | Restar        | 10%           |
  | Multiplicar   | 0%            |
  | Dividir       | 0%            |

- **Interfaz Visual:**
  Incluye funciones para grabación, reproducción, análisis temporal y frecuencial, y visualización de resultados.

## Contribuidores
- Katherine Saady Condor Oscanoa
- Jean Pierre Michael Cueva Rivadeneyra
- Walther Daniel Retuerto Carrillo
- Anthony Diego Santillán Romualdo
