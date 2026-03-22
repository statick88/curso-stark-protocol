---
title: "SDD - Spec-Driven Development"
author: "Diego Saavedra García"
description: "Metodología de desarrollo guiado por especificaciones"
---

# 📋 SDD

## **Spec-Driven Development**

---

## 📋 **Descripción**

SDD es una metodología donde el desarrollo se guía por especificaciones claras y verificables. Cada cambio sigue un ciclo de 7 pasos que garantiza calidad y trazabilidad.

## 🔄 **El Ciclo SDD**

```
         ┌─────────────────┐
         │  1. ANALYZE     │
         │  SDD + Specs    │
         └────────┬────────┘
                  │
         ┌────────▼────────┐
         │  2. PROPOSE    │
         │  Architecture  │
         └────────┬────────┘
                  │
         ┌────────▼────────┐
         │  3. REFINEMENT  │
         │  User Feedback  │
         └────────┬────────┘
                  │
    ┌─────────────┼─────────────┐
    │             │             │
┌───▼───┐   ┌────▼────┐   ┌───▼───┐
│  4.   │   │  4.     │   │  4.   │
│ IMPLE-│   │ TESTING │   │MEMORY │
│MENT   │   │         │   │       │
└───┬───┘   └────┬────┘   └───┬───┘
    │             │             │
    └─────────────┼─────────────┘
                  │
         ┌────────▼────────┐
         │  6. CONSOLIDATE │
         │  Engram + Merge │
         └────────┬────────┘
                  │
         ┌────────▼────────┐
         │  7. ITERATE     │
         │  Next Feature   │
         └─────────────────┘
```

## 📝 **Documentos del Proceso**

### **1. Proposal (Propuesta)**
```markdown
# Propuesta: Sistema de Autenticación

## Intent
Implementar autenticación JWT para la API

## Scope
- Login/Logout
- Refresh tokens
- Password reset
- Rate limiting

## Enfoque
- JWT con expiración corta
- Refresh tokens en HTTP-only cookies
- Redis para blacklist de tokens
```

### **2. Spec (Especificación)**
```markdown
# Especificación: Auth System

## Requisitos

### REQ-001: Login
**Como** usuario
**Quiero** iniciar sesión con email/password
**Para** acceder a mi cuenta

**Criterios de Aceptación:**
- [ ] Recibir JWT access token (15 min)
- [ ] Recibir refresh token (7 días)
- [ ] Rate limit: 5 intentos/5 min
- [ ] Respuesta 401 si credenciales inválidas
```

### **3. Design (Diseño)**
```markdown
# Diseño: Auth System

## Arquitectura

```
Controller → Service → Repository
    ↓           ↓          ↓
  HTTP     JWT Logic    Database
```

## Decisiones
1. JWT sobre Sesiones → Stateless, escalable
2. Redis para blacklist → Revocación inmediata
3. Refresh tokens → Mejor UX sin seguridad comprometida
```

### **4. Tasks (Tareas)**
```markdown
# Tareas: Auth System

- [ ] **T-001**: Crear AuthController (2h)
- [ ] **T-002**: Implementar AuthService (3h)
- [ ] **T-003**: Configurar Redis (1h)
- [ ] **T-004**: Escribir tests (2h)
- [ ] **T-005**: Documentar API (1h)

**Total estimado**: 9 horas
```

## 🎯 **Beneficios**

| Beneficio | Descripción |
|-----------|-------------|
| **Claridad** | Todos entienden qué construir |
| **Trazabilidad** | Cada línea de código tiene una razón |
| **Calidad** | Tests verifican specs, no implementación |
| **Feedback temprano** | Problemas se detectan antes de codificar |

## 🔗 **Recursos**

- [Metodología SDD Completa](https://github.com/Gentleman-Programming/gentle-ai/tree/main/sdd)
- [Templates de Documentos](https://github.com/Gentleman-Programming/gentle-ai/tree/main/sdd/templates)
- [Ejemplos Prácticos](https://github.com/Gentleman-Programming/gentle-ai/tree/main/sdd/examples)
