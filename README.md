# 🧠 Reconocimiento de Voz con Redes Neuronales y Transformada Wavelet

![MATLAB](https://img.shields.io/badge/MATLAB-2023b+-orange?style=flat&logo=mathworks)
![SVM](https://img.shields.io/badge/Modelo-SVM-blue?style=flat)
![Wavelet](https://img.shields.io/badge/Transformada-Wavelet-green?style=flat)
![Windows](https://img.shields.io/badge/Sistema-Windows-lightgrey?style=flat&logo=windows)
![Estado](https://img.shields.io/badge/Precisión-99.36%25-success?style=flat)
![Licencia](https://img.shields.io/badge/Licencia-Personal-red)

---

## 📌 Descripción

Este proyecto desarrolla un sistema robusto de **reconocimiento de voz** para identificar comandos matemáticos básicos: sumar, restar, multiplicar y dividir. Utiliza técnicas avanzadas como la **transformada wavelet** y **redes neuronales**, integradas en una **interfaz visual interactiva**.

---

## 🎯 Objetivos

- Identificar comandos de voz con un modelo **SVM** entrenado.
- Implementar descomposición de señales vía **transformada wavelet**.
- Diseñar una **interfaz gráfica** para grabación, análisis y visualización.

---

## 💻 Requisitos

- **Software:** MATLAB 2023b o superior  
- **Hardware:**  
  - Micrófono compatible  
  - Computadora con Windows  
- **Datos:**  
  - 130 grabaciones (no incluidas por confidencialidad)  
  - Palabras objetivo: _sumar_, _restar_, _multiplicar_, _dividir_

---

## ⚙️ Características Principales

### Interfaz Visual
- Grabación y reproducción de audio  
- Visualización en dominio tiempo/frecuencia  
- Árbol de descomposición y matriz de confusión

### Procesamiento de Señales
- Descomposición en 6 niveles (Wavelet)  
- Extracción de energía por subbandas

### Modelo de Clasificación
- Clasificador **SVM**  
- Evaluación con **matriz de confusión**

---

## 🚀 Instrucciones de Uso

1. Abre el entorno en **MATLAB**.
2. Realiza grabaciones bajo estas condiciones:
   - 44,100 Hz – 2 segundos – Monocanal, 16 bits
3. Inicia la interfaz gráfica.
4. Graba las palabras objetivo.
5. Visualiza los resultados en tiempo real.

---

## 📊 Resultados

### Matriz de Confusión
| Palabra       | Tasa de Error |
|---------------|---------------|
| Sumar         | 30%           |
| Restar        | 10%           |
| Multiplicar   | 0%            |
| Dividir       | 0%            |

✅ **Precisión Total del Modelo:** 99.36%

---

## 🖼️ Interfaz Visual

Incluye funciones para:
- Grabación y reproducción
- Análisis temporal/frecuencial
- Visualización del árbol de descomposición
- Generación de matriz de confusión

---

## 👤 Autor

**Joanna Alexandra Carrión Pérez**  
🎓 Bachiller en Ingeniería Electrónica  
💡 Apasionada por Ciencia de Datos e Inteligencia Artificial  
🔗 ![LinkedIn](https://img.shields.io/badge/LinkedIn-Joanna%20Carrión%20Pérez-blue?style=flat&logo=linkedin) [LinkedIn](https://www.linkedin.com/in/joanna-carrion-perez/)

---

## 🤝 Contribuidores

- Katherine Saady Condor Oscanoa  
- Jean Pierre Michael Cueva Rivadeneyra  
- Walther Daniel Retuerto Carrillo  
- Anthony Diego Santillán Romualdo

---

## 📬 Contacto

📧 **joannacarrion14@gmail.com**

---

## 💡 Contribuciones

¡Contribuciones son bienvenidas! Haz un fork del repositorio y envía un pull request con mejoras o sugerencias. 🚀 
