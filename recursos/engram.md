---
title: "Engram - Memoria Persistente"
author: "Diego Saavedra García"
description: "Sistema de memoria persistente para agentes de IA"
---

# 🧠 Engram

## **Memoria Persistente para IA**

---

## 📋 **Descripción**

Engram es un sistema de memoria que permite a los agentes de IA recordar decisiones, descubrimientos y patrones entre sesiones.

## 🔧 **Comandos Principales**

### **Guardar Memoria**
```javascript
// Guardar decisión importante
mem_save({
  title: "Elegí Zustand sobre Redux",
  type: "decision",
  content: {
    "What": "Cambiamos de Redux a Zustand para gestión de estado",
    "Why": "Zustand es más simple y tiene mejor performance",
    "Where": "src/store/index.ts",
    "Learned": "Para apps pequeñas, Zustand es mejor opción"
  }
})
```

### **Buscar Memoria**
```javascript
// Buscar decisiones pasadas
mem_search({
  query: "gestión de estado React",
  type: "decision",
  limit: 5
})
```

### **Contexto Reciente**
```javascript
// Ver contexto de sesión reciente
mem_context({
  limit: 20,
  project: "curso-iron-man"
})
```

## 📊 **Tipos de Observación**

| Tipo | Uso | Ejemplo |
|------|-----|---------|
| `decision` | Decisiones arquitectónicas | "Elegí PostgreSQL sobre MongoDB" |
| `bugfix` | Soluciones de bugs | "Fixed N+1 query en UserList" |
| `pattern` | Patrones establecidos | "Patrón Repository para DB" |
| `discovery` | Descubrimientos importantes | "API rate limiting era el bottleneck" |

## 🔗 **Recursos**

- [Documentación Engram](https://github.com/Gentleman-Programming/gentle-ai/tree/main/engram)
- [Ejemplos de Uso](https://github.com/Gentleman-Programming/gentle-ai/tree/main/engram/examples)
