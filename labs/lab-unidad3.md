---
title: "Lab 3: Piloto y Copiloto"
author: "Diego Saavedra"
---

# 🎯 Lab 3: Piloto y Copiloto

## Manteniendo el Control

---

## ⏱️ Timeline de Verificación

| Paso | Descripción | Tiempo | Completado |
|------|-------------|--------|------------|
| 1 | Reformular 3 requests | 20 min | ⬜ |
| 2 | Análisis de decisiones | 15 min | ⬜ |
| 3 | Escenario de decisión | 15 min | ⬜ |
| 4 | Reflexión final | 10 min | ⬜ |
| **Total** | | **60 min** | |

---

## 🎯 Objetivo

Reformular requests para mantener el control como piloto.

---

## ⚠️ Importante: No Copiar, Reformular

Los ejercicios te hacen reformular, no ejecutar ciegamente.

---

## 1. El Concepto Central

Stark nunca delega decisiones. Delega ejecución.

Stark decide qué construir. J.A.R.V.I.S. sugiere cómo. Juntos eligen.

**Tú eres el piloto.**

---

## 2. Ejercicio 1: Sugerir vs Decidir

**Observa estas dos interacciones:**

**Interacción A:**
```
Usuario: "Instala PostgreSQL en mi servidor"
IA: "Ejecutando: sudo apt-get install postgresql"
```

**Interacción B:**
```
Usuario: "Quiero instalar una base de datos"
IA: "Tengo tres opciones:
1. PostgreSQL
2. MongoDB
3. SQLite
¿Cuál se ajusta mejor a tu caso?"
```

**Reflexiona:**

```
¿En cuál interacción el usuario tiene más control? ___
¿En cuál aprende más? ___
¿Cuál es más safe? ___
```

---

## 3. Tu Turno: Reformula

**Instrucciones:** Lee cada request vago. Reescríbelo para pedir opciones.

**Request 1:**
```
Original: "Optimiza mi base de datos"
```

**Tu versión (complétala):**
```
"Quiero optimizar mi base de datos. 
¿Qué opciones tengo? Dame pros y contras de:
- ___
- ___
- ___
Mis constraints son: ___
"
```

---

**Request 2:**
```
Original: "Escríbeme tests para mi API"
```

**Tu versión (complétala):**
```
"Quiero agregar tests a mi API.
¿Qué tipos de tests recommendarías?
Para cada tipo, dame:
- Propósito
- Herramienta sugerida
- Ejemplo básico
Mi API usa: ___
"
```

---

**Request 3:**
```
Original: "Configura CI/CD para mi proyecto"
```

**Tu versión (complétala):**
```
"Quiero configurar CI/CD.
¿Qué opciones hay para un proyecto ___
con stack ___
Para cada opción, quiero saber:
- Pros
- Contras
- Complejidad de setup
Mi prioridad es: ___
"
```

---

## 4. Ejercicio 2: El Análisis de Decisiones

**Escenario:**

Estás construyendo una API. Tienes que elegir entre:

- **Opción A:** REST
- **Opción B:** GraphQL
- **Opción C:** gRPC

**Tu tarea:**

1. Piensa: ¿Qué criterios usarías para elegir?
2. Escribe los criterios en orden de prioridad
3. Para cada opción, evalúa según tus criterios
4. Toma una decisión

**Registro:**

```
Mis criterios (en orden):
1. ___
2. ___
3. ___

Evaluación:
- Opción A (REST): ___
- Opción B (GraphQL): ___
- Opción C (gRPC): ___

Mi decisión: ___
```

**Pregunta:**

```
¿Tomaste la decisión basándote en datos o en preferencia personal? ___
¿Cambiaría J.A.R.V.I.S. algo de tu análisis? ___
```

---

## 5. Ejercicio 3: Cuando Decidir es Duro

**Escenario Real:**

Stark tenía que elegir entre Blue-green deployment y Canary release.

J.A.R.V.I.S. le dio los pros y contras. Stark eligió Blue-green.

**Tu escenario:**

Estás deployando una actualización de seguridad crítica.

Opciones:

- **Opción A:** Deploy ahora, con rollback rápido
- **Opción B:** Deploy gradual (10% → 50% → 100%)
- **Opción C:** No deploy hasta tener más testing

**Tu análisis (complétalo):**

```
¿Qué preguntas harías antes de decidir?
1. ___
2. ___
3. ___

¿Qué elegirías y por qué? ___

¿Pedirías ayuda a la IA para decidir o ya tienes claro qué hacer? ___
```

---

## Reflexión Final

```
¿Sientes que tienes más control después de este lab?
¿O sientes que delegas más responsabilidad a la IA?

En una escala de 1-10:
- Mi nivel de control actual: ___
- Mi nivel de control deseado: ___

¿Qué necesito hacer para cerrar la brecha? ___
```

---

## Verificación

**Checklist:**

- [ ] 3 requests reformulados
- [ ] Análisis de decisiones completado
- [ ] Decisión justificada
- [ ] Reflexiones completadas

---

## Entregable

**Archivo**: `piloto_y_copiloto.md`

Incluir:
- Los 3 requests reformulados
- Tu análisis de decisión
- Tu reflexión final

---

## Recursos

- [Human-AI Decision Making](https://hai.stanford.edu/)
- [AI as a Tool, Not a Replacement](https://arxiv.org/abs/2303.10130)
