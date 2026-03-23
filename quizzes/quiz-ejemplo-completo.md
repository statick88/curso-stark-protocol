# Quiz Ejemplo: Todos los Tipos de Preguntas

---

## Tipo 1: Selección Múltiple

## Pregunta 1

**¿Cuál es el PRINCIPIO FUNDAMENTAL del Protocolo Stark?**

A) La IA debe hacer todo el trabajo
B) Tú pilotas, la IA amplifica
C) Siempre dar instrucciones específicas
D) Nunca iterar más de una vez

<details>
<summary>Respuesta</summary>
**B) Tú pilotas, la IA amplifica**
</details>

---

## Tipo 2: True/False

## Pregunta 2

**¿Verdadero o Falso?**

El modelo GPT-4 tiene una ventana de contexto de 128K tokens.

<details>
<summary>Respuesta</summary>
**Falso**. GPT-4 Turbo tiene 128K tokens, pero GPT-4 original tiene solo 8K (y 32K para GPT-4-32k).
</details>

---

## Pregunta 3

**¿Verdadero o Falso?**

En el Protocolo Stark, el piloto (usuario) siempre toma las decisiones finales.

<details>
<summary>Respuesta</summary>
**Verdadero**. La IA sugiere y ejecuta, pero el usuario es quien decide. Esta es la esencia del modelo "piloto-copiloto".
</details>

---

## Tipo 3: Matching (Relacionar Columnnas)

## Pregunta 4

**Relaciona las columnas**

| Concepto | Definición |
|----------|------------|
| A. Contexto | 1. Palabra que el modelo procesa |
| B. Token | 2. Información que mejora resultados |
| C. Iteración | 3. Mejora continua hasta estar satisfecho |
| D. Prompt | 4. La instrucción que das a la IA |

<details>
<summary>Respuesta</summary>
A-2, B-1, C-3, D-4
</details>

---

## Pregunta 5

**Relaciona los términos con su descripción**

| Término | Descripción |
|---------|------------|
| A. Few-shot | 1. Dar ejemplos en el prompt |
| B. Zero-shot | 2. Sin ejemplos, solo instrucción |
| C. Chain-of-thought | 3. Razonamiento paso a paso |
| D. Temperature | 4. Control de creatividad/aleatoriedad |

<details>
<summary>Respuesta</summary>
A-1, B-2, C-3, D-4
</details>

---

## Tipo 4: Code Output Prediction

## Pregunta 6

**¿Qué output produce este código?**

```python
print("Iron Man"[::-1])
```

<details>
<summary>Respuesta</summary>
**"naM norri"** — El slicing [::-1] invierte la cadena de texto.
</details>

---

## Pregunta 7

**¿Qué output produce este código?**

```python
result = "JARVIS".lower().replace("j", "J")
print(result)
```

<details>
<summary>Respuesta</summary>
**"JARVIS"** — `.lower()` convierte a minúsculas ("jarvis"), luego `.replace("j", "J")` reemplaza solo la primera "j" minúscula por "J" mayúscula, resultando en "JARVIS".
</details>

---

## Pregunta 8

**¿Qué output produce este código?**

```python
datos = [{"nombre": "Tony"}, {"nombre": "Pepper"}]
print([d["nombre"].upper() for d in datos])
```

<details>
<summary>Respuesta</summary>
**['TONY', 'PEPPER']** — List comprehension que itera sobre cada diccionario y aplica `.upper()` al valor de "nombre".
</details>

---

## Tipo 5: Casos de Estudio

## Pregunta 9 - Caso: El Error del Timezone

**Contexto:**
Stark usa un script para analizar logs del reactor ARC. El script funcionaba bien durante 3 días. Hoy, todos los análisis fallan. Al revisar, J.A.R.V.I.S. nota que los timestamps cambiaron de UTC a PST.

**¿Cuál es la causa más probable?**

A) Hackeo del sistema
B) Actualización de timezone del servidor
C) La IA generó código incorrecto
D) Los logs están corruptos

<details>
<summary>Respuesta</summary>
**B) Actualización de timezone del servidor** — Sin contexto del timezone, el código asume UTC por defecto. Al cambiar a PST sin actualizar el código, las fechas se interpretan incorrectamente.
</details>

---

## Pregunta 10 - Caso: El Prompt Vago

**Contexto:**
Stark escribe: "Escríbeme una función que valide emails"

**El problema principal es:**

A) Falta el lenguaje de programación
B) No se especifica el formato exacto de email válido
C) Falta el nombre de la función
D) El prompt es muy largo

<details>
<summary>Respuesta</summary>
**B) No se especifica el formato exacto** — ¿Solo emails comunes? ¿dominios corporativos? ¿extensiones específicas? Sin contexto, la IA genera código genérico que puede fallar en casos edge.
</details>

---

## Pregunta 11 - Caso: La Decisión del Deployment

**Contexto:**
J.A.R.V.I.S. debe elegir entre dos estrategias de deployment:
- **Blue-green**: Dos entornos idénticos, cambio instantáneo
- **Canary**: Cambiosgraduales a porcentaje de usuarios

**Si eres el piloto, ¿cuál elegerías?**

A) Blue-green porque es más simple
B) Canary porque reduce el riesgo
C) Cualquiera, no importa
D) Ninguna, mejor no hacer deployment

<details>
<summary>Respuesta</summary>
**B) Canary** — Reduce el riesgo permitiendo rollback rápido. PERO la respuesta correcta es "depende del contexto". El piloto debe evaluar: criticidad del sistema, tolerancia a fallos, recursos disponibles. J.A.R.V.I.S. debe dar opciones, no decidir por ti.
</details>

---

## Tipo 6: Fill-in-the-Blank

## Pregunta 12

**Completa la oración:**

La "Fórmula del Contexto Perfecto" es: **___ + Con qué + Cómo + ___**

<details>
<summary>Respuesta</summary>
**Qué + Con qué + Cómo + Edge cases**

La fórmula completa es: Qué + Con qué + Cómo + Edge cases
</details>

---

## Pregunta 13

**Completa:**

En el Protocolo Stark, el rol del usuario es ser el **___** y el de la IA es ser el **___**.

<details>
<summary>Respuesta</summary>
**piloto** y **copiloto**

El usuario pilota (toma decisiones), la IA amplifica (ejecuta y sugiere).
</details>

---

## 🎯 Resumen de Tipos de Preguntas

| Tipo | Cantidad | Descripción |
|------|----------|-------------|
| Selección Múltiple | 1 | Opción única entre varias |
| True/False | 2 | Verdadero o Falso con justificación |
| Matching | 2 | Relacionar columnas |
| Code Output Prediction | 3 | Predecir qué produce el código |
| Casos de Estudio | 3 | Escenarios con decisiones |
| Fill-in-the-Blank | 2 | Completar oraciones |

---

> *"El conocimiento sin acción es ignorancia. La acción sin conocimiento es locura."* — J.A.R.V.I.S.
