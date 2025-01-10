# Reconocimiento de Voz con Redes Neuronales y Transformada Wavelet

## Descripción
Este proyecto desarrolla un sistema robusto de reconocimiento de voz para identificar comandos matemáticos básicos (sumar, restar, multiplicar y dividir). Utiliza técnicas avanzadas de análisis de señales, como la transformada wavelet y redes neuronales, para lograr una alta precisión en la detección, complementado con una interfaz visual interactiva.

## Objetivos
- Identificar comandos de voz utilizando un modelo SVM entrenado con características extraídas de señales de audio.
- Implementar un árbol de descomposición de señales mediante la transformada wavelet.
- Diseñar una interfaz visual para la grabación, procesamiento y análisis de señales.

## Requisitos
- **Software:** MATLAB 2023b o superior.
- **Hardware:**
  - Micrófono compatible.
  - Computadora con Windows.
- **Datos:** Las grabaciones utilizadas en este proyecto son confidenciales y no están incluidas en el repositorio. Los usuarios deberán realizar sus propias grabaciones de acuerdo a las especificaciones proporcionadas (130 grabaciones en total para las palabras: sumar, restar, multiplicar y dividir).

## Características principales
- **Interfaz Visual:**
  - Grabación y reproducción de audios.
  - Visualización de señales en el dominio del tiempo y la frecuencia.
  - Visualización del árbol de descomposición y la matriz de confusión.
- **Procesamiento de Señales:**
  - Descomposición en 6 niveles mediante la transformada wavelet.
  - Extracción de características energéticas por subbandas.
- **Modelo de Clasificación:**
  - Support Vector Machine (SVM) entrenado con datos balanceados.
  - Resultados evaluados mediante una matriz de confusión.

## Instrucciones de Uso
1. Configura el entorno en MATLAB y asegura un espacio de grabación con poco ruido.
2. Realiza tus propias grabaciones siguiendo estas especificaciones:
   - Frecuencia de muestreo: 44,100 Hz.
   - Duración por grabación: 2 segundos.
   - Formato: Monocanal, 16 bits.
3. Inicia la interfaz visual y ajusta los parámetros de grabación.
4. Graba las palabras objetivo y observa los resultados en tiempo real en la interfaz.
5. Visualiza el análisis energético, el árbol de descomposición y la matriz de confusión.

## Ejemplos de Resultados
- **Matriz de Confusión:**
  El modelo SVM alcanzó una precisión del 99.36% en la clasificación de palabras.
  
  | Palabra       | Tasa de Error |
  |---------------|---------------|
  | Sumar         | 30%           |
  | Restar        | 10%           |
  | Multiplicar   | 0%            |
  | Dividir       | 0%            |

- **Interfaz Visual:**
  Incluye funciones para grabación, reproducción, análisis temporal y frecuencial, y visualización de resultados.

## Autor
**Joanna Alexandra Carrión Pérez**: Bachiller de Ingeniería Electrónica. Apasionada por la Ciencia de Datos y la Inteligencia Artificial. [LinkedIn](https://www.linkedin.com/in/joanna-carrion-perez/)

## Contribuidores
- Katherine Saady Condor Oscanoa
- Jean Pierre Michael Cueva Rivadeneyra
- Walther Daniel Retuerto Carrillo
- Anthony Diego Santillán Romualdo

## Contacto
Para cualquier duda o sugerencia, contáctame a través de **joannacarrion14@gmail.com**.

## Contribuciones
¡Contribuciones son bienvenidas! Si tienes ideas o mejoras, no dudes en hacer un fork del repositorio y enviar un pull request.
