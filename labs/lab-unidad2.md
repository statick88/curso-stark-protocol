---
title: "Lab 2: El Request Perfecto"
author: "Diego Saavedra"
---

# 🎯 Lab 2: El Request Perfecto

## Escribiendo como Stark

---

## ⏱️ Timeline de Verificación

| Paso | Descripción | Tiempo | Completado |
|------|-------------|--------|------------|
| 1 | Escenario 1: README | 15 min | ⬜ |
| 2 | Escenario 2: Función | 15 min | ⬜ |
| 3 | Escenario 3: Arquitectura | 15 min | ⬜ |
| 4 | Request real con IA | 20 min | ⬜ |
| **Total** | | **65 min** | |

---

## 🎯 Objetivo

Escribir requests efectivos con contexto específico para obtener mejores resultados.

---

## ⚠️ Importante: No Copiar, Completar

Los ejercicios te hacen completar, no copiar. Esto te obliga a pensar qué incluir.

---

## 1. Warm-up: Dos Versiones

Antes de empezar, observa estas dos versiones del mismo request:

**Versión A:**
```
Escríbeme una función que procese payments
```

**Versión B:**
```
Escríbeme una función que procese payments para un sistema de e-commerce.
- Moneda: USD
- Validar: card number, expiry, CVV
- Retornar: status, transaction_id, timestamp
- Formato: JSON
- Incluir manejo de errores básicos
```

**Pregunta para reflexionar:**

```
¿Qué versión produciría mejor código? ___
¿Por qué? ___
```

---

## 2. Escenarios

### Escenario 1: El README 📄

**Tu tarea**: Escribe un request para generar un README.md

**Contexto:**
- Proyecto: Una API REST para gestionar tareas
- Audiencia: Otros developers
- Lenguaje: Python con FastAPI
- Tono: Profesional pero accesible

**Tu request (complétalo):**

```
___
```

**Después, reflexiona:**

¿Qué información incluiste que no habría estado en un request vago?

```
1. ___
2. ___
3. ___
```

---

### Escenario 2: La Función ⚙️

**Tu tarea**: Escribe un request para generar una función

**Contexto:**
- Función: Buscar usuarios por criterios múltiples
- Lenguaje: JavaScript
- Input: Un objeto con criterios de búsqueda
- Output: Array de usuarios matching
- Manejo: Usuarios no encontrados, criterios inválidos

**Tu request (complétalo):**

```
___
```

**Después, reflexiona:**

¿Qué passaste por alto que probablemente la IA tendría que preguntar?

```
1. ___
```

---

### Escenario 3: La Arquitectura 🏗️

**Tu tarea**: Escribe un request para discutir arquitectura

**Contexto:**
- Sistema: Microservicio de autenticación
- Tech stack: Node.js, PostgreSQL, Redis
- Requisitos: JWT tokens, rate limiting, refresh tokens
- Constraints: Debe manejar 10,000 requests/segundo

**Tu request (complétalo):**

```
___
```

**Después, reflexiona:**

¿Qué información NO incluiste que sería relevante?

```
1. ___
2. ___
```

---

## 3. El Ejercicio Final: Request vs Response

**Instrucciones:**

1. Toma uno de tus requests anteriores
2. Cópialo a tu herramienta de IA favorita
3. Ejecuta el request
4. Compara el resultado con lo que esperabas

**Registro:**

```
Request que usé: Escenario 1 / 2 / 3 (tacha lo que no aplique)

Resultado de la IA:
___

¿Era lo que esperabas? ___

Si no, ¿qué faltó en mi request? ___

¿La IA preguntó algo útil que yo no había considerado? ___

Insights para mi próximo request:
1. ___
2. ___
```

---

## Patrón Descubierto

Después de hacer estos ejercicios, ¿qué tienen en común los mejores requests?

```
___
```

---

## Verificación

**Checklist:**

- [ ] Escenario 1 completado
- [ ] Escenario 2 completado
- [ ] Escenario 3 completado
- [ ] Request ejecutado con IA
- [ ] Reflexiones completadas

---

## Entregable

**Archivo**: `requests_efectivos.md`

Incluir:
- Los 3 requests que escribiste
- Los insights que descubriste
- El resultado de tu request real
- Tu reflexión final

---

## Recursos

- [Providing Context to AI](https://platform.openai.com/docs/guides/gpt-best-practices)
- [Context Window Explained](https://www.promptingguide.ai/techniques/context)
