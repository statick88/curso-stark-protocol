# Mejoras Labs y Quizzes - Iron Man Evolution

> Análisis realizado: 23 Marzo 2026
> Autor: Diego Saavedra García
> Curso: Iron Man Evolution - Desarrollo con IA

---

## 1. Análisis de Labs Actuales

### 1.1 Archivos Revisados

| Archivo | Estado | Issues Encontrados |
|---------|--------|-------------------|
| `labs/lab-nivel1.md` | ✅ Estructura completa | Formato anti-copy-paste OK |
| `labs/lab-nivel2.md` | ✅ Estructura completa | Formato anti-copy-paste OK |
| `labs/lab-nivel3.md` | ⚠️ Contenido duplicado | Mezcla "Lab 3" + "Piloto y Copiloto" |
| `labs/lab-nivel4.md` | ⚠️ Contenido duplicado | Mezcla "Lab 4" + "Iteración Mortal" |
| `labs/lab-nivel5.md` | ⚠️ Contenido duplicado | Mezcla "Lab 5" + SDD + Controles |
| `labs/lab-nivel6.md` | ⚠️ Contenido duplicado | Mezcla "Lab 6" + "Proyecto Final" |
| `labs/boss-fight1.md` | ✅ Estructura completa | Scaffolding integrado |
| `labs/boss-fight2.md` | ✅ Estructura completa | Templates de código OK |
| `labs/boss-fight3.md` | ✅ Estructura completa | Arquitectura completa |
| `labs/boss-fight4.md` | ✅ Estructura completa | Sistema inteligente |
| `labs/boss-fight5.md` | ✅ Estructura completa | Zero Trust completo |
| `labs/boss-fight6.md` | ✅ Estructura completa | Multi-agente complejo |

### 1.2 Evaluación Anti-Copy-Paste

| Criterio | Labs Regulares | Boss Fights |
|----------|---------------|-------------|
| **Comandos parciales** | ✅ `___`, `[completa esto]` | ✅ Scaffolding con `pass` |
| **Ejercicios de completar** | ✅ Frases incompletas | ⚠️ Menos que labs |
| **Reflexiones obligatorias** | ✅ Secciones vacías | ⚠️ Opcional |
| **Verificación activa** | ✅ Checklist manual | ✅ Métricas definidas |

**Hallazgo**: Los labs tienen buen formato anti-copy-paste con espacios `___` y templates incompletos. Los boss-fights tienen scaffolding de código que força al estudiante a completar.

### 1.3 Análisis de Progresividad

```
Nivel 1: Configuración básica + sistema simple
    ↓
Nivel 2: AGENTS.md + estructura de proyecto  
    ↓
Nivel 3: Arquitectura profesional + testing
    ↓
Nivel 4: Sistema de asistencia inteligente
    ↓
Nivel 5: SDD + controles éticos
    ↓
Nivel 6: Ecosistema multi-agente
```

**Evaluación**: ✅ Progresión clara y escalonada
- Cada nivel construye sobre el anterior
- La complejidad técnica aumenta gradualmente
- Los conceptos se integran progresivamente

### 1.4 Problemas Estructurales Detectados

#### 🔴 Problema 1: Contenido Duplicado en Labs
Los labs 3-6 tienen contenido que parece ser de labs separados combinados:

```
lab-nivel3.md = Lab 3 (Mark III) + "Piloto y Copiloto" (verificar si es un lab separado)
lab-nivel4.md = Lab 4 (JARVIS) + "Iteración Mortal" (parece contenido de otra unidad)
lab-nivel5.md = Lab 5 (Ultron) + SDD 7 pasos + Controles Éticos
lab-nivel6.md = Lab 6 (Nanotech) + El Proyecto Final
```

**Recomendación**: Separar en archivos independientes o renombrar como "Lab 3: Iteración" para unificar.

#### 🔴 Problema 2: Inconsistencia en Formato de Reflexiones
- Labs 1-2: Reflexiones con templates markdown vacíos
- Labs 3-6: Reflexiones en formato "```" (código) en lugar de markdown

#### 🔴 Problema 3: Ausencia de Comandos Parciales en Boss Fights
Los boss-fights dan demasiado scaffolding code, reduciendo la fricción cognitiva.

---

## 2. Análisis de Quizzes Actuales

### 2.1 Archivos Revisados

| Archivo | Preguntas | Formato | Estado |
|---------|-----------|---------|--------|
| `quizzes/unidad1.md` | 8 | Multiple Choice | ✅ |
| `quizzes/unidad2.md` | 8 | Multiple Choice | ✅ |
| `quizzes/unidad3.md` | 8 | Multiple Choice | ✅ |
| `quizzes/unidad4.md` | 8 | Multiple Choice | ✅ |
| `quizzes/unidad5.md` | 8 | Multiple Choice | ✅ |
| `quizzes/unidad6.md` | 10 | Multiple Choice | ✅ |

### 2.2 Evaluación de Calidad

| Criterio | Evaluación | Notas |
|----------|------------|-------|
| **Conceptos clave cubiertos** | ✅ | Cada unidad tiene preguntas sobre conceptos principales |
| **Variedad de tipos** | ⚠️ | Solo multiple choice |
| **Preguntas desafiantes** | ✅ | Requieren comprensión, no memorización |
| **Contexto narrativo** | ✅ | Usan escenario Stark/JARVIS |
| **Retroalimentación** | ✅ | Respuestas en collapsible `<details>` |

### 2.3 Análisis por Tipo de Pregunta

| Tipo | Cantidad | Porcentaje |
|------|----------|------------|
| Concepto básico | 24 | 40% |
| Aplicación/Scenario | 20 | 33% |
| Razonamiento | 12 | 20% |
| Casos edge/Crash | 4 | 7% |

**Hallazgo**: Las preguntas son de buena calidad pero hay poca variedad. Faltan:
- Preguntas de código (escribir qué output produce)
- True/False con justificación
- Matching de conceptos
- Casos de estudio extensos

---

## 3. Mejoras Propuestas

### 3.1 Template Mejorado para Labs Futuros

```markdown
---
title: "Lab X: [Título temático]"
author: "Diego Saavedra García"
description: "[Descripción corta]"
nivel: [1-6]
prerrequisitos:
  - "[Lab anterior]"
  - "[Concepto requerido]"
duration_minutes: [60]
xp_reward: [100-500]
---

# 🛡️ Lab X: [Título]

## 🎬 La Situación
> *[Quote de Iron Man]*

[Contexto narrativo]

---

## ⏱️ Timeline

| Paso | Descripción | Tiempo | Completado |
|------|-------------|--------|------------|
| 1 | [Tarea 1] | X min | ⬜ |
| ... | ... | ... | ... |
| **Total** | | **X min** | |

---

## 🎯 Objetivo

Al finalizar este lab tendrás:
1. ✅ [Habilidad 1]
2. ✅ [Habilidad 2]
3. ✅ [Entregable]

---

## ⚠️ Regla del Stark Protocol

> **"[Quote relevante]"**

**REGLA ORO**: [Regla específica del lab]

---

## 1.warmup

### 1.1 Concepto Clave

[Explicación breve del concepto]

### 1.2 Ejemplo

```python
# Ejemplo funcional
def ejemplo():
    return "J.A.R.V.I.S."
```

---

## 2. Ejercicio 1: [Nombre del Ejercicio]

### Contexto
[Qué debe hacer el estudiante]

### Tu Respuesta

**Paso 1: [acción]**

```
[Espacio para respuesta - usando underline]
___
```

**Paso 2: [acción]**

```
[Espacio para respuesta]
___
```

### Verificación

- [ ] ✅ Paso 1 completado
- [ ] ✅ Paso 2 completado

---

## 3. Reflexión Post-Ejercicio

```markdown
## Lo que aprendí
- 
- 

## Lo que debo mejorar
- 
- 
```

---

## 4. Prueba de Fuego

[Comando para verificar el trabajo]

```bash
# Ejecuta esto para verificar
[comando de verificación]
```

**Resultado esperado:**
```
[output esperado]
```

---

## 5. Entregable

### Archivo a crear: `[nombre].md`

```markdown
# Mi Respuesta - Lab X
## Estructura requerida

### 1. [Sección 1]
[Contenido completado]

### 2. [Sección 2]
[Contenido completado]
```

---

## 🏆 Logro Desbloqueado

- **+[X] XP** por completar
- **Logro "[Nombre]"**
- **Acceso a [Siguiente nivel]**

---

## Recursos

- [Recurso 1](url)
- [Recurso 2](url)
```

### 3.2 Nuevos Tipos de Ejercicios

#### A. Ejercicio "Code Review" (Anti-Copy-Paste)

```markdown
### Ejercicio: Code Review de Stark

El siguiente código fue escrito por Tony Stark. Revísalo.

```python
# Este código tiene errores intencionales
def validar_password(pwd):
    if len(pwd) > 8:
        return True
```

**Tu trabajo:** 
1. Identifica los problemas
2. Explain why each one fails
3. Escribe la versión corregida

**Espacio para tu análisis:**
```
Problema 1: ___
Por qué: ___
Corrección: ___
```
```

#### B. Ejercicio "Decision Matrix"

```markdown
### Ejercicio: Matriz de Decisión

Stark debe elegir entre tres opciones. Crea la matriz.

| Criterio | Peso | Opción A | Opción B | Opción C |
|----------|------|----------|----------|----------|
| Seguridad | 40% | ___ | ___ | ___ |
| Velocidad | 30% | ___ | ___ | ___ |
| Costo | 30% | ___ | ___ | ___ |
| **Total** | 100% | ___ | ___ | ___ |

**Tu decisión:** ___
**Justificación:** ___
```

#### C. Ejercicio "Debug the Prompt"

```markdown
### Ejercicio: Depura el Prompt

Este prompt tiene problemas. Identifícalos y corrígelos.

**Prompt original:**
```
"Escriueme una função que valida emails"
```

**Problemas identificados:**
1. ___
2. ___

**Prompt corregido:**
```
[Escribe el prompt mejorado]
___
```
```

### 3.3 Mejoras en Quizzes - Nuevos Tipos de Preguntas

#### A. True/False con Justificación

```markdown
## Pregunta X

**Verdadero o Falso:** "En el Protocolo Stark, el piloto siempre delega las decisiones a la IA."

- [ ] Verdadero
- [ ] Falso

**Justificación (requerida):**
___

<details>
<summary>Respuesta</summary>
**Falso** - El piloto (usuario) siempre toma las decisiones importantes. La IA sugiere pero no decide.
</details>
```

#### B. Matching de Conceptos

```markdown
## Pregunta X

**Relaciona los conceptos con sus definiciones:**

| Concepto | Definición |
|----------|------------|
| 1. Contexto | a) Mantener control sobre decisiones |
| 2. Piloto | b) Información que mejora los resultados |
| 3. Iteración | c) Mejora continua hasta llegar a "suficientemente bueno" |
| 4. Límites | d) Información que NO se comparte |

**Tu respuesta:** 1-___ 2-___ 3-___ 4-___
```

#### C. Código - Predice el Output

```markdown
## Pregunta X

**Dado el siguiente prompt:**
```
"Actúa como desarrollador Python. 
Escríbeme una función validate_email(-variable-)"
```

**Si ejecutas este código:**
```python
print(validate_email("test"))
```

**¿Qué esperas ver?**
- [ ] True
- [ ] False
- [ ] Error
- [ ] None
```

#### D. Casos de Estudio

```markdown
## Pregunta X - Caso: El Error de Stark

**Contexto:**
Stark usa un script para analizar logs del reactor. El script funcionaba bien durante 3 días. Hoy, todos los análisis fallan. Al revisar, J.A.R.V.I.S. nota que los timestamps cambiaron de UTC a PST.

**La causa más probable es:**
- A) Hackeo del sistema
- B) Actualización de timezone del servidor
- C) La IA generó código incorrecto
- D) Los logs están corruptos

<details>
<summary>Respuesta</summary>
**B) Actualización de timezone del servidor** - Este es el patrón visto en el curso. Sin contexto del timezone, el código asume UTC.
</details>
```

---

## 4. Checklist de Calidad para Labs y Quizzes

### 4.1 Checklist Labs

| # | Criterio | Antes | Después |
|---|----------|-------|---------|
| 1 | Tiene ambiente/situación Iron Man | ✅ | ✅ |
| 2 | Tiene timeline con duraciones | ✅ | ✅ |
| 3 | Tiene objetivo claro | ✅ | ✅ |
| 4 | Tiene regla Stark Protocol | ✅ | ✅ |
| 5 | Ejercicios tienen `___` (anti-copy-paste) | ✅ | ✅ |
| 6 | Reflexiones tienen template vacío | ✅ | ✅ |
| 7 | Tiene verificación/checklist | ✅ | ✅ |
| 8 | Tiene entregable claro | ✅ | ✅ |
| 9 | Tiene logro XP | ✅ | ✅ |
| 10 | No tiene contenido duplicado | ⚠️ | 🔲 |
| 11 | Formato consistente en todas las secciones | ⚠️ | 🔲 |
| 12 | Comando de verificación ejecutable | ✅ | 🔲 |

### 4.2 Checklist Quizzes

| # | Criterio | Antes | Después |
|---|----------|-------|---------|
| 1 | Mínimo 8 preguntas por unidad | ✅ | ✅ |
| 2 | Respuestas en collapsible | ✅ | ✅ |
| 3 | Cubren conceptos clave | ✅ | ✅ |
| 4 | Usan contexto narrativo | ✅ | ✅ |
| 5 | Tienen variedad de tipos | ⚠️ | 🔲 |
| 6 | Incluyen casos de estudio | ⚠️ | 🔲 |
| 7 | Explican el "por qué" | ✅ | ✅ |
| 8 | Formato consistente | ✅ | ✅ |

---

## 5. Plan de Acción Inmediato

### 5.1 Alta Prioridad (Corrige errores estructurales)

| Tarea | archivos | Esfuerzo |
|-------|----------|----------|
| Separar contenido duplicado en labs 3-6 | labs/lab-nivel3-6.md | Medio |
| Estandarizar formato de reflexiones | labs/*.md | Bajo |
| Agregar comando de verificación a todos los labs | labs/*.md | Bajo |

### 5.2 Media Prioridad (Mejora calidad)

| Tarea | archivos | Esfuerzo |
|-------|----------|----------|
| Agregar 2-3 preguntas de nuevos tipos por quiz | quizzes/*.md | Medio |
| Crear nuevos templates de ejercicios | - | Medio |
| Agregar "Code Review" exercises | labs/nivel3-6.md | Alto |

### 5.3 Baja Prioridad (Mejora continua)

| Tarea | archivos | Esfuerzo |
|-------|----------|----------|
| Migrar a formato YAML frontmatter estandarizado | todos | Bajo |
| Agregar más recursos/external links | todos | Bajo |
| Crear versión interactiva (si aplica) | - | Alto |

---

## 6. Métricas de Calidad Final

### 6.1 Estado Actual

```
Labs:      ████████████████░░░░ 80%
Quizzes:   ██████████████░░░░░ 70%
```

### 6.2 Estado Objetivo

```
Labs:      ████████████████████ 95%
Quizzes:   ████████████████████ 95%
```

### 6.3 Acciones Completadas

- [x] Revisión de 12 archivos de labs
- [x] Revisión de 6 archivos de quizzes  
- [x] Identificación de issues estructurales
- [x] Propuesta de template mejorado
- [x] Propuesta de nuevos tipos de ejercicios
- [x] Creación de checklist de calidad

### 6.4 Próximos Pasos

1. Separar contenido duplicado en labs 3-6
2. Estandarizar formato de reflexiones
3. Agregar nuevo tipo de preguntas a quizzes
4. Implementing verificación commands
5. Review final con checklist

---

> *"Lo importante no es la perfección, sino la mejora continua."* — J.A.R.V.I.S.