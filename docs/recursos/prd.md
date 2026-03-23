---
title: "PRD - Product Requirements Document"
author: "Diego Saavedra García"
description: "Documento de Requisitos de Producto para desarrollo con IA"
---

# 📋 PRD

## **Product Requirements Document**

---

## 📋 **Descripción**

El **PRD (Product Requirements Document)** es el documento fundamental que define QUÉ vamos a construir y POR QUÉ. Es el puente entre el problema de negocio y la solución técnica.

**¿Por qué existe el PRD?**
- SDD te dice CÓMO construir bien
- **PRD te dice QUÉ construir**

Sin PRD, corres el riesgo de construir algo que nadie necesita (el error de Ultron: creó su solución sin entender el objetivo real).

---

## 🎯 **PRD vs SDD: ¿Cuál viene primero?**

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                        FLUJO: PRD → SDD                                          │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  ┌─────────────┐         ┌─────────────┐         ┌─────────────┐             │
│  │    PRD      │ ──────► │    SDD       │ ──────► │  IMPLEMENT  │             │
│  │  (Qué?)     │         │  (Cómo?)     │         │  (Código)   │             │
│  └─────────────┘         └─────────────┘         └─────────────┘             │
│        │                       │                                               │
│        ▼                       ▼                                               │
│  • Problem Statement    • Proposal                                             │
│  • Personas             • Specs                                                │
│  • Success Metrics      • Design                                               │
│  • Scope (In/Out)      • Tasks                                                │
│  • Approach             • Apply                                                │
│                                                                                 │
│  J.A.R.V.I.S. analiza    Tony diseña la                Ejecuta el             │
│  el problema real        solución técnica               plan                   │
└─────────────────────────────────────────────────────────────────────────────────┘
```

**Analogía Iron Man:**
- **PRD**: Tony Stark analizando la amenaza antes de diseñar la armadura
- **SDD**: Los planos técnicos de la armadura
- **Implementación**: Construir la armadura

> *"Si no puedes explicar el problema, no puedes resolverlo."*
> — J.A.R.V.I.S.

---

## 📝 **Estructura del PRD**

### **1. Intent & Problem Statement**

```markdown
## 1. Intent & Problem Statement

### Problema Actual
[Describe el problema que resuelve]

### Impacto del Problema
[Quién se ve afectado y cómo]

### Propuesta de Valor
[Por qué esto vale la pena]
```

**Ejemplo - Iron Man Theme:**

```markdown
## 1. Intent & Problem Statement

### Problema Actual
Los escudos de las armaduras Mark 7-42 no se actualizan automáticamente cuando se detecta una nueva amenaza. Los soldados deben solicitar actualizaciones manualmente, causando demoras de 5-15 minutos en situaciones críticas.

### Impacto del Problema
- Soldados en campo reciben escudos desactualizados
- 3 incidentes documentados de fallos por brecha de seguridad
- 15 minutos de tiempo promedio de respuesta

### Propuesta de Valor
Implementar sistema de actualización automática de escudos que:
- Detecte amenazas en tiempo real
- Descargue parches de seguridad en < 30 segundos
- Reduzca incidentes de seguridad a 0
```

---

### **2. Personas & Stakeholders**

```markdown
## 2. Personas & Stakeholders

### Usuario Primario
| Campo | Descripción |
|-------|-------------|
| **Nombre** | [Nombre] |
| **Rol** | [Rol en la organización] |
| **Objetivos** | [Qué quiere lograr] |
| **Frustraciones** | [Qué le frustra] |
| **Contexto** | [Cuándo usa el sistema] |

### Stakeholders Clave
| Stakeholder | Interés | Influencia |
|-------------|---------|-------------|
| [Nombre]    | [Qué gana]| [Alta/Media/Baja] |
```

**Ejemplo:**

```markdown
## 2. Personas & Stakeholders

### Usuario Primario: Soldado de Campo
| Campo | Descripción |
|-------|-------------|
| **Nombre** | Soldado Mk. 7 |
| **Rol** | Infantry / Flying |
| **Objetivos** | Estar protegido en todo momento |
| **Frustraciones** | Escudos que no se actualizan, demoras en combate |
| **Contexto** | Situaciones de combate, misiones de reconocimiento |

### Stakeholders
| Stakeholder | Interés | Influencia |
|-------------|---------|-------------|
| Tony Stark | Seguridad máxima | Alta |
| Pepper Potts | ROI, eficiencia | Alta |
| Happy Hogan | Logística | Media |
| Soldados | Supervivencia | Alta |
```

---

### **3. Success Metrics (KPIs)**

```markdown
## 3. Success Metrics (KPIs)

### Métricas de Negocio
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|
| [Métrica 1] | [Número] | [Método] |

### Métricas Técnicas
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|
| [Métrica 1] | [Número] | [Método] |

### Métricas de Usuario
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|
| [Métrica 1] | [Número] | [Método] |
```

**Ejemplo SMART:**

```markdown
## 3. Success Metrics (KPIs)

### Métricas de Negocio
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|
| Reducción de incidentes | 0 incidentes/mes | Reportes de campo |
| Tiempo de actualización | < 30 segundos | Logs del sistema |
| Satisfacción de usuario | > 4.5/5 | Encuesta post-misión |

### Métricas Técnicas
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|
| Uptime del sistema | 99.9% | Monitoring |
| Latencia de descarga | < 5s | APM |
| Cobertura de tests | > 80% | CI/CD |

### Definition of Done
- [ ] Sistema en producción
- [ ] 0 incidentes en 30 días
- [ ] Documentación completa
- [ ] Capacitación dada
```

---

### **4. Scope (IN/OUT)**

```markdown
## 4. Scope

### In Scope (qué incluye)
- [ ] Feature 1
- [ ] Feature 2

### Out of Scope (qué NO incluye)
- [ ] Feature 1
- [ ] Feature 2

###nice to Have (prioridad baja)
- [ ] Feature 1

### Dependencias Externas
- [ ] Sistema A (deadline: fecha)
- [ ] Sistema B (pendiente de aprobación)
```

**Ejemplo:**

```markdown
## 4. Scope

### In Scope
- [ ] Sistema de detección de amenazas
- [ ] Pipeline de descarga de actualizaciones
- [ ] Integración con armaduras Mark 7-50
- [ ] Panel de administración
- [ ] Logs de auditoría

### Out of Scope
- [ ] Actualización de firmware de hardware (solo software)
- [ ] Integración con sistemas legacy (v2)
- [ ] Aplicación móvil (v2)
- [ ] Soporte para armaduras older than Mark 7

### Nice to Have (v2)
- [ ] AI predictivo para amenazas
- [ ] Modo offline con caché local

### Dependencias Externas
- [ ] Servidor de parches de Stark Industries (listo)
- [ ] API de threat intelligence (en desarrollo)
```

---

### **5. High-Level Approach**

```markdown
## 5. High-Level Approach

### Arquitectura Propuesta
```
[Diagrama de arquitectura]

### Stack Tecnológico
- **Frontend**: [Tech]
- **Backend**: [Tech]
- **Database**: [Tech]
- **Infra**: [Tech]

### Decisiones Clave
| Decisión | Alternativa considerada | Justificación |
|----------|------------------------|----------------|
| [Decisión]| [Alternativa]          | [Justificación]|
```

**Ejemplo:**

```markdown
## 5. High-Level Approach

### Arquitectura Propuesta
```
┌─────────────────────────────────────────────────────────────────┐
│                    ARQUITECTURA: SHIELD UPDATE                   │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   Threat DB ──► Detector ──► Queue ──► Worker ──► Cache        │
│       │                              │                          │
│       │                              ▼                          │
│       │                    ┌──────────────────┐                 │
│       └──────────────────►│  Armadura       │                 │
│                            │  (Subscriber)   │                 │
│                            └──────────────────┘                 │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### Stack Tecnológico
- **Backend**: FastAPI (Python 3.11+)
- **Message Queue**: Redis Streams
- **Database**: PostgreSQL
- **Cache**: Redis
- **CI/CD**: GitHub Actions

### Decisiones Clave
| Decisión | Alternativa | Justificación |
|----------|-------------|---------------|
| Redis Streams | RabbitMQ | Mejor rendimiento para streams |
| FastAPI | Express | native async, mejor para IA |
```

---

### **6. Acceptance Criteria (Given/When/Then)**

```markdown
## 6. Acceptance Criteria

### Criterios de Aceptación
| ID | Given | When | Then |
|----|-------|------|------|
| AC-001 | [Condición inicial] | [Acción] | [Resultado esperado] |
```

**Formato Gherkin:**
```gherkin
Feature: Nombre del feature

  Scenario: Escenario 1
    Given [condición inicial]
    When [acción del usuario]
    Then [resultado esperado]
```

**Ejemplo:**

```markdown
## 6. Acceptance Criteria

### Criterios de Aceptación

| ID | Given | When | Then |
|----|-------|------|------|
| AC-001 | Armadura Mark 7 conectada a red | Nueva amenaza detectada | Escudo actualizado en < 30s |
| AC-002 | Sin conexión a internet | Intento de actualización | Mensaje de error claro + fallback |
| AC-003 | Múltiples armaduras | Actualización masiva | Todas completan sin conflicto |
| AC-004 | Usuario no autorizado | Intenta acceder a panel | Acceso denegado (401) |

### Gherkin Scenarios

```gherkin
Feature: Auto-Update de Escudos

  Scenario: Actualización exitosa
    Given una armadura Mark 7 conectada a la red
    And el sistema detecta una nueva amenaza
    When el sistema descarga el parche de seguridad
    Then el escudo se actualiza automáticamente
    And el usuario recibe notificación de "Escudo actualizado"

  Scenario: Sin conexión - Modo offline
    Given una armadura Mark 7 sin conexión a internet
    When el sistema detecta nueva amenaza
    Then el sistema usa el último escudo conocido
    And el usuario recibe notificación de "Modo offline"
```

---

### **7. Risks & Constraints**

```markdown
## 7. Risks & Constraints

### Riesgos Identificados
| Riesgo | Severidad | Probabilidad | Mitigación |
|--------|-----------|--------------|------------|
| [Riesgo] | [Alta/Media] | [Alta/Media] | [Cómo mitigar] |

### Restricciones
| Restricción | Descripción | Impacto |
|-------------|-------------|---------|
| [Restricción]| [Qué limita] | [Impacto] |

### Supuestos
- [ ] Supuesto 1
- [ ] Supuesto 2
```

**Ejemplo:**

```markdown
## 7. Risks & Constraints

### Riesgos Identificados
| Riesgo | Severidad | Probabilidad | Mitigación |
|--------|-----------|--------------|------------|
| Latencia en descarga | Alta | Media | Cache local + retry logic |
| Fallo en servidor | Alta | Baja | Fallback a CDN externo |
| Conflicto de versiones | Media | Media | Versionado SemVer |
| Datos de amenaza corruptos | Alta | Baja | Validación de firma digital |

### Restricciones
| Restricción | Descripción | Impacto |
|-------------|-------------|---------|
| Tamaño de parche | Max 50MB | Requiere compresión |
| Latencia red | Max 100ms | CDN cercano |
| Compatibilidad | Mark 7+ solo | Requiere migración |

### Supuestos
- [ ] Los servidores de Stark Industries están disponibles
- [ ] Las armaduras tienen conectividad constante
- [ ] El threat database se actualiza daily
```

---

### **8. Dependencies & Approvals**

```markdown
## 8. Dependencies & Approvals

### Dependencias Internas
| Dependencia | Equipo | Status | Deadline |
|-------------|--------|--------|----------|
| [Dependencia]| [Equipo]| [Ready] | [Fecha] |

### Dependencias Externas
| Dependencia | Vendor | Status | Deadline |
|-------------|--------|--------|----------|
| [Dependencia]| [Vendor]| [Ready] | [Fecha] |

### Aprobaciones Requeridas
| Aprobación | Approver | Status |
|------------|----------|--------|
| [Aprobación]| [Nombre]| [Pending] |

### Timeline
- **Kickoff**: [Fecha]
- **PRD Approval**: [Fecha]
- **Development Start**: [Fecha]
- **Release**: [Fecha]
```

**Ejemplo:**

```markdown
## 8. Dependencies & Approvals

### Dependencias Internas
| Dependencia | Equipo | Status | Deadline |
|-------------|--------|--------|----------|
| API de threat Intel | Security Team | Ready | - |
| Cache infrastructure | Infra Team | Ready | - |
| Acceso a logs | Ops Team | In Progress | 15 Mar |

### Dependencias Externas
| Dependencia | Vendor | Status | Deadline |
|-------------|--------|--------|----------|
| CDN Cloudflare | Cloudflare | Contract Ready | - |
| AWS S3 | AWS | Ready | - |

### Aprobaciones Requeridas
| Aprobación | Approver | Status |
|------------|----------|--------|
| PRD Approval | Tony Stark | Pending |
| Security Review | Happy Hogan | Pending |
| Budget Approval | Pepper Potts | Pending |

### Timeline
- **Kickoff**: 1 Mar 2024
- **PRD Approval**: 10 Mar 2024
- **Development Start**: 15 Mar 2024
- **Release**: 1 May 2024
```

---

## 🔄 **Integración PRD → SDD**

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                    INTEGRACIÓN: PRD → SDD                                        │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  PRD (Business)           SDD (Technical)                                       │
│  ──────────────           ─────────────────                                      │
│                                                                                 │
│  Intent ────────────────► Proposal (intent heredado)                           │
│  Scope ─────────────────► Specs (scope refinado)                               │
│  Success Metrics ───────► Acceptance Criteria (métricas convertidas)          │
│  Personas ──────────────► User Stories (personas a user stories)             │
│  Approach ──────────────► Design (arquitectura basada en approach)           │
│  Risks ─────────────────► Technical Tasks (riesgos a tareas)                │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

**El flujo completo:**

```
Business Problem
       │
       ▼
┌──────────────┐
│     PRD     │  ← Defines QUÉ (What)
└──────┬──────┘
       │      ┌──────────────────────────────────────────────────────┐
       │      │                      SDD                             │
       ▼      ▼                                                      │
┌──────────────┐    ┌─────────────┐    ┌─────────────┐              │
│   PROPOSE   │───►│    SPECS    │───►│   DESIGN    │              │
│  (Intent)   │    │ (Requirements)│  │ (Technical)│              │
└──────┬──────┘    └──────┬──────┘    └──────┬──────┘              │
       │                  │                  │                      │
       ▼                  ▼                  ▼                      │
┌──────────────┐    ┌─────────────┐    ┌─────────────┐              │
│    TASKS    │───►│    APPLY    │───►│   VERIFY    │              │
│ (Breakdown) │    │ (Implement) │    │ (Validate)  │              │
└──────────────┘    └─────────────┘    └─────────────┘              │
       │                                                       (END)
       ▼
┌──────────────┐
│   ARCHIVE   │
│  (Engram)   │
└──────────────┘
```

---

## 🛠️ **Template PRD**

### Archivo: `prd-template.md`

```markdown
---
title: "[Nombre del Proyecto]"
status: "Draft"
author: "[Autor]"
date: "[Fecha]"
---

# PRD: [Nombre del Proyecto]

## 1. Intent & Problem Statement

### Problema Actual
[Descripción del problema]

### Impacto del Problema
[Quién se ve afectado y cómo]

### Propuesta de Valor
[Por qué esto vale la pena]

---

## 2. Personas & Stakeholders

### Usuario Primario
| Campo | Descripción |
|-------|-------------|
| **Nombre** | |
| **Rol** | |
| **Objetivos** | |
| **Frustraciones** | |
| **Contexto** | |

### Stakeholders Clave
| Stakeholder | Interés | Influencia |
|-------------|---------|------------|

---

## 3. Success Metrics (KPIs)

### Métricas de Negocio
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|

### Métricas Técnicas
| Métrica | Target | Cómo se mide |
|---------|--------|--------------|

### Definition of Done
- [ ]

---

## 4. Scope

### In Scope
- [ ]

### Out of Scope
- [ ]

### Nice to Have
- [ ]

### Dependencias Externas
- [ ]

---

## 5. High-Level Approach

### Arquitectura Propuesta
```
[Diagrama]
```

### Stack Tecnológico
-

### Decisiones Clave
| Decisión | Justificación |
|----------|---------------|

---

## 6. Acceptance Criteria

| ID | Given | When | Then |
|----|-------|------|------|

---

## 7. Risks & Constraints

### Riesgos Identificados
| Riesgo | Severidad | Probabilidad | Mitigación |
|--------|-----------|--------------|------------|

### Restricciones
| Restricción | Descripción | Impacto |
|-------------|-------------|---------|

### Supuestos
- [ ]

---

## 8. Dependencies & Approvals

### Dependencias
| Dependencia | Status | Deadline |

### Aprobaciones Requeridas
| Aprobación | Approver | Status |
|------------|----------|--------|

### Timeline
- **Kickoff**: 
- **PRD Approval**: 
- **Development Start**: 
- **Release**: 
```

---

## 📚 **Recursos**

- [PRD Template de Product Plan](https://www.productplan.com/)
- [How to Write a PRD - Atlassian](https://www.atlassian.com/software/confluence)
- [SDD Methodology - Gentle AI](https://github.com/Gentleman-Programming/gentle-ai/tree/main/sdd)
- [PRD Examples - Silicon Valley Product Group](https://svpg.com/)

---

## ⚡ **Ejercicio: Boss Fight - PRD Architect**

**Objetivo**: Crear un PRD completo para el siguiente problema:

> *"Los trajes Iron Man en campo no pueden comunicarse entre sí cuando están en modo sigilo. Necesitamos un sistema de comunicación segura que funcione sin emitir señales detectable."*

**Tu misión:**
1. Crear PRD completo usando el template
2. Incluir al menos 3 personas
3. Definir 5 métricas de éxito (SMART)
4. Identificar 3 riesgos con mitigación
5. Crear 5 criterios de aceptación

**Entregable**: `prd-comunicacion-segura.md`

**Checklist de Evaluación:**
- [ ] Problem Statement claro (< 100 palabras)
- [ ] 3+ stakeholders definidos
- [ ] 5 KPIs con targets
- [ ] Scope IN/OUT claro
- [ ] Arquitectura de alto nivel
- [ ] 5+ acceptance criteria
- [ ] 3+ riesgos con mitigación
- [ ] Timeline realista
