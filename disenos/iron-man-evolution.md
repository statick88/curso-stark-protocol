# Diseño: "Iron Man Evolution" — Rediseño del Curso

## 🎯 Visión General

Rediseñar el curso "Stark Protocol" (actualmente "Desarrollo con IA: De 0 a Producción") con una **narrativa completa de Iron Man** y una **estructura de niveles de juego**, manteniendo todo el contenido técnico avanzado (agentes, SDD, Engram, MCP, skills, Gentle AI Stack) pero presentado como una progresión épica desde el demo en la cueva hasta el traje nanotech.

## 🎬 Trama Narrativa (Iron Man Timeline)

### Nivel 1: **El Demo en la Cueva** — "Supervivencia"
- **Escena**: Tony Stark crea el Mark I en la cueva con recursos limitados
- **Analogía**: El desarrollador comienza con scripts básicos, prompts simples
- **Meta**: Sobrevivir al problema inmediato
- **Tema técnico**: Fundamentos de IA, prompting básico, configuración

### Nivel 2: **El Mark I** — "Primer Prototipo"
- **Escena**: Stark prueba el Mark I, funcional pero con limitaciones
- **Analogía**: Primer agente, AGENTS.md básico, scripts automatizados
- **Meta**: Crear algo que funcione, aunque sea torpe
- **Tema técnico**: Agentes básicos, archivos de contexto, primeros automatizaciones

### Nivel 3: **El Mark III** — "Traje de Combate"
- **Escena**: Stark perfecciona el traje para combate real
- **Analogía**: Subagentes, skills modulares, MCP para herramientas externas
- **Meta**: Robustez, modularidad, capacidades ampliadas
- **Tema técnico**: Subagentes, skills registry, MCP básico

### Nivel 4: **El JARVIS Avanzado** — "Inteligencia Ampliada"
- **Escena**: JARVIS evoluciona con memoria, aprendizaje y autonomía
- **Analogía**: Memoria persistente (Engram), orquestación avanzada, memoria entre sesiones
- **Meta**: Sistema que aprende y recuerda
- **Tema técnico**: Engram, memoria persistente, MCP avanzado, orquestación

### Nivel 5: **El Ultron** — "El Poder y los Límites"
- **Escena**: Stark crea Ultron, una IA demasiado poderosa sin controles
- **Analogía**: SDD, orquestación multi-agente, riesgos de agentes autónomos
- **Meta**: Control, ética, límites del poder agéntico
- **Tema técnico**: SDD Orchestrator, control humano, seguridad, ética

### Nivel 6: **El Nanotech** — "La Evolución Final"
- **Escena**: Stark crea el traje nanotech, integración perfecta, producción en tiempo real
- **Analogía**: Gentle AI Stack, Software Driver Development, CI/CD, producción
- **Meta**: Sistema completo, autocontenido, robusto
- **Tema técnico**: Gentle AI Stack, SDD completo, CI/CD, testing, seguridad, despliegue

## 🎮 Estructura de Niveles (Gamificación)

### Sistema de Progresión
- **XP (Experiencia)**: Por completar labs y ejercicios
- **Logros**: Desbloquear habilidades específicas
- **Boss Fights**: Retos finales por nivel
- **Power-ups**: Herramientas que el estudiante descubre

### Por Nivel:
1. **Tutorial**: Explicación narrativa (Iron Man)
2. **Training**: Ejercicios guiados
3. **Challenge**: Reto práctico
4. **Boss Fight**: Proyecto integrador
5. **Achievement**: Logro desbloqueado

## 📚 Mapeo de Contenido Actual → Nuevo Diseño

### Unidades Actuales → Niveles Iron Man

| Nivel | Iron Man | Unidad Actual | Contenido Técnico | Labs Actuales |
|-------|----------|---------------|-------------------|---------------|
| 1 | El Demo en la Cueva | Unidad 1: El Despertar | Fundamentos, setup, prompting básico | Lab 1 |
| 2 | El Mark I | Unidad 2: Contexto es Rey | Contexto, prompts efectivos, AGENTS.md | Lab 2 |
| 3 | El Mark III | Unidad 3: El Piloto | Agentes básicos, control humano | Lab 3 |
| 4 | JARVIS Avanzado | Unidad 4: Refinamiento | Subagentes, skills, MCP | Lab 4 |
| 5 | Ultron | Unidad 5: Límites | SDD, orquestación, ética | Lab 5 |
| 6 | Nanotech | Unidad 6: Síntesis | Gentle AI Stack, producción | Lab 6 |

### Contenido Técnico por Nivel

#### Nivel 1: El Demo en la Cueva
- **Conceptos**: IA básica, tokens, context window, prompting intro
- **Herramientas**: ChatGPT, Claude, Gemini
- **Práctica**: Primeros prompts, configuración de herramientas
- **Logro**: "Survivor" — Primera interacción exitosa con IA

#### Nivel 2: El Mark I
- **Conceptos**: Context engineering, AGENTS.md, convenciones
- **Herramientas**: Editores de texto, archivos de contexto
- **Práctica**: Crear AGENTS.md, dar contexto específico
- **Logro**: "Architect" — Sistema de contexto establecido

#### Nivel 3: El Mark III
- **Conceptos**: Agentes, subagentes, loops, percepción-acción
- **Herramientas**: Claude Code, OpenCode, agentes locales
- **Práctica**: Primer agente que ejecuta comandos, subagentes para testing
- **Logro**: "Pilot" — Agente funcional con delegación

#### Nivel 4: JARVIS Avanzado
- **Conceptos**: Memoria persistente, Engram, MCP, skills
- **Herramientas**: Engram, Gentle AI Stack, servidores MCP
- **Práctica**: Instalar Engram, crear skills, conectar herramientas vía MCP
- **Logro**: "Genius" — Sistema con memoria y herramientas

#### Nivel 5: Ultron
- **Conceptos**: SDD, orquestación multi-agente, control humano, ética
- **Herramientas**: SDD Orchestrator, Kiro, sistemas de control
- **Práctica**: Flujo SDD completo, orquestar múltiples agentes
- **Logro**: "Director" — Orquestación compleja con control

#### Nivel 6: Nanotech
- **Conceptos**: Gentle AI Stack completo, CI/CD, testing, seguridad
- **Herramientas**: Gentle AI Stack, Docker, GitHub Actions
- **Práctica**: Desplegar sistema completo, pipeline de producción
- **Logro**: "Innovator" — Sistema de producción robusto

## 🔧 Integración de Gentleman Programming / Gentle AI

### Referencias Clave
- **GitHub**: https://github.com/Gentleman-Programming/gentle-ai
- **Skills**: https://github.com/Gentleman-Programming/Gentleman-Skills
- **Video**: "Cómo ser TONY STARK con IA" — YouTube

### Integración en el Curso
1. **Nivel 4**: Instalación y uso de Gentle AI Stack
2. **Nivel 5**: Orquestación SDD usando el stack
3. **Nivel 6**: Producción completa con el stack

### Skills Relevantes a Incluir
- `clean-code`, `tdd`, `clean-architecture` — Calidad de código
- `agile` — Metodologías ágiles
- `abacom-cursos`, `abacom-anti-ai-tasks` — Creación de cursos
- `jest`, `pytest`, `playwright` — Testing
- `docker`, `devops` — Infraestructura

## 📝 Estructura de Documentación por Nivel

### Plantilla para Cada Nivel
```markdown
# Nivel X: [Nombre Iron Man]

## 🎬 Escena de la Película
[Descripción de la escena con screenshot si es posible]

## 🎯 Objetivos de Aprendizaje
- [Lista de objetivos]

## 🧠 Conceptos Técnicos
### [Subconcepto 1]
Explicación con analogía de Iron Man

### [Subconcepto 2]
Explicación con analogía de Iron Man

## 🔬 Laboratorio: [Nombre]
### Configuración
### Ejercicio 1
### Ejercicio 2
### Ejercicio 3
### Reto Final

## 🏆 Logro Desbloqueado
[Nombre del logro]

## 📚 Recursos Adicionales
- [Enlaces relevantes]
```

## 🚀 Progresión hacia el Sistema Multi-Agente Avanzado

### De Principiante a Arquitecto/Orquestador
El curso está diseñado como una **escalera de complejidad** que lleva al estudiante desde conceptos básicos hasta el sistema avanzado descrito en el ejemplo del usuario.

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                   PROGRESIÓN: DE PRINCIPIANTE A ORQUESTADOR                     │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  ┌──────────────────┐                                                          │
│  │ NIVEL 1          │                                                          │
│  │ PRINCIPIANTE     │                                                          │
│  │                  │                                                          │
│  │ ¿Qué es una IA?  │──────┐                                                   │
│  └──────────────────┘      │                                                   │
│                            ▼                                                   │
│                  ┌──────────────────┐                                           │
│                  │ NIVEL 2          │                                           │
│                  │ USUARIO          │                                           │
│                  │                  │                                           │
│                  │ Prompts efectivos │──────┐                                   │
│                  └──────────────────┘      │                                   │
│                                           ▼                                   │
│                                ┌──────────────────┐                            │
│                                │ NIVEL 3          │                            │
│                                │ DESARROLLADOR    │                            │
│                                │                  │                            │
│                                │ Primer agente    │──────┐                     │
│                                └──────────────────┘      │                     │
│                                                          ▼                     │
│                                             ┌──────────────────┐               │
│                                             │ NIVEL 4          │               │
│                                             │ INGENIERO        │               │
│                                             │                  │               │
│                                             │ MCP + Engram     │──────┐        │
│                                             └──────────────────┘      │        │
│                                                                       ▼        │
│                                                          ┌──────────────────┐   │
│                                                          │ NIVEL 5          │   │
│                                                          │ ARQUITECTO       │   │
│                                                          │                  │   │
│                                                          │ SDD + Multi-agente│──────┐
│                                                          └──────────────────┘      │
│                                                                                    ▼
│                                                                       ┌──────────────────┐
│                                                                       │ NIVEL 6          │
│                                                                       │ ORQUESTADOR      │
│                                                                       │                  │
│                                                                       │ Sistema completo │──────┐
│                                                                       └──────────────────┘      │
│                                                                                                ▼
│                                                                       ┌─────────────────────────────────┐
│                                                                       │    🎯 SISTEMA AVANZADO          │
│       ┌───────────────────────────────────────────────────────────────┤    DEL EJEMPLO                  │
│       │                                                               │                                 │
│       │  • Arquitecto de Software Senior                              │  • Security First & Zero Trust  │
│       │  • Experto en DevSecOps                                       │  • Git Worktrees aislados       │
│       │  • Orquestador Multi-Agente                                   │  • Flujo de 7 pasos con         │
│       │                                                               │    sub-agentes                  │
│       └───────────────────────────────────────────────────────────────┘                                 │
│                                                                                                │
│                                                                                                │
└────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

### Cómo Cada Nivel Construye Hacia el Sistema Avanzado

| Nivel | Lo que Aprende | Cómo Conecta al Sistema Avanzado |
|-------|----------------|-----------------------------------|
| **1. Demo en la Cueva** | Qué es IA, tokens, prompts básicos | Base para entender cualquier interacción con IA |
| **2. Mark I** | Context Engineering, AGENTS.md | Preparación para configuración inicial del repositorio |
| **3. Mark III** | Agentes básicos, sub-agentes | Fundamentos para orquestación multi-agente |
| **4. JARVIS Avanzado** | MCP, Engram, Skills | Herramientas específicas para el orquestador |
| **5. Ultron** | SDD, orquestación, control humano | Principios fundamentales y flujo de trabajo de 7 pasos |
| **6. Nanotech** | Sistema completo, CI/CD, producción | Implementación completa del orquestador multi-agente |

### Mapeo Detallado: Curso → Sistema Avanzado

#### Principios Fundamentales en Cada Nivel
| Principio del Sistema Avanzado | Nivel donde se introduce | Nivel donde se profundiza |
|--------------------------------|---------------------------|---------------------------|
| **Security First** | Nivel 1 (seguridad básica) | Nivel 5 (DevSecOps), Nivel 6 (hardening) |
| **Zero Trust** | Nivel 2 (validar inputs) | Nivel 5 (auditoría ética), Nivel 6 (security scanning) |
| **Spec-Driven Development** | Nivel 4 (introducción a SDD) | Nivel 5 (SDD completo), Nivel 6 (SDD automation) |
| **Aislamiento Multi-Agente** | Nivel 3 (sub-agentes básicos) | Nivel 5 (Git worktrees), Nivel 6 (workflow aislado) |

#### Flujo de Trabajo de 7 Pasos - Progresión por Niveles
```yaml
# Nivel 1: Aprende el Paso 1 (Análisis básico)
paso_1:
  nivel_1: "Analizar qué necesita el usuario"
  nivel_2: "Analizar con contexto específico"
  nivel_3: "Analizar con AGENTS.md"
  nivel_4: "Analizar con MCP y Engram"
  nivel_5: "Análisis SDD formal con criterios Gherkin"
  nivel_6: "Análisis SDD automatizado con sub-agentes"

# Nivel 2: Aprende el Paso 2 (Propuesta básica)
paso_2:
  nivel_1: "Proponer solución simple"
  nivel_2: "Proponer con alternativas"
  nivel_3: "Proponer con agentes especializados"
  nivel_4: "Proponer con búsqueda en GitHub + security scan"
  nivel_5: "Propuesta arquitectónica con Zero Trust"
  nivel_6: "Propuesta automatizada con validación de seguridad"

# Y así sucesivamente para los 7 pasos...
```

## 🛠️ Configuración del Sistema Avanzado (Nivel 6)

### El Orquestador Principal (Estudiante como Arquitecto)
Al completar el Nivel 6, el estudiante será capaz de actuar como:

```
┌─────────────────────────────────────────────────────────────────┐
│  ROL: Arquitecto de Software Senior + Orquestador Principal     │
│                                                                  │
│  RESPONSABILIDADES:                                             │
│  • Dirigir ciclo de vida del desarrollo con IA                  │
│  • Gestionar sub-agentes especializados                         │
│  • Asegurar Security First & Zero Trust                         │
│  • Implementar Spec-Driven Development                          │
│  • Mantener aislamiento con Git worktrees                       │
│  • Fusionar trabajo vía Pull Requests                           │
│                                                                  │
│  HERRAMIENTAS DOMINADAS:                                        │
│  • Claude Code, OpenCode, Gemini CLI, KiloCode, Kiro, Amp      │
│  • MCP para conexiones externas                                 │
│  • Engram para memoria persistente                              │
│  • Skills para conocimiento modular                             │
│  • Git worktrees para aislamiento                               │
└─────────────────────────────────────────────────────────────────┘
```

### Flujo de Trabajo de 7 Pasos (Implementado en Nivel 6)
```bash
# PASO 1: Análisis SDD y Specs
# El estudiante aprende a analizar usando SDD desde el Nivel 4

# PASO 2: Propuesta Arquitectónica
# Con Zero Trust y Security First desde el Nivel 5

# PASO 3: Refinamiento con el Usuario
# Habilidad de comunicación desde todos los niveles

# PASO 4: Implementación Aislada
# Git worktrees y sub-agentes desde el Nivel 5

# PASO 5: Testing y Memoria a Corto Plazo
# Testing desde el Nivel 3, Engram desde el Nivel 4

# PASO 6: Consolidación (Engram y Merge)
# Engram desde el Nivel 4, PR workflow desde el Nivel 6

# PASO 7: Iteración Proactiva
# Mentalidad de mejora continua desde todos los niveles
```

## 📊 Métricas de Éxito

- **Compromiso**: Tiempo promedio por nivel
- **Completación**: % de estudiantes que terminan todos los niveles
- **Satisfacción**: Encuesta post-curso
- **Habilidades**: Proyecto final que integre todos los niveles
- **Progresión**: % de estudiantes que alcanzan el Nivel 6 (objetivo: 30%)

## 🔗 Enlaces Relevantes

- [Gentle AI Stack](https://github.com/Gentleman-Programming/gentle-ai)
- [Gentleman Skills](https://github.com/Gentleman-Programming/Gentleman-Skills)
- [Cómo ser Tony Stark con IA (YouTube)](https://www.youtube.com/watch?v=SOxuW5K2FFY)
- [Especificación MCP](https://modelcontextprotocol.io)
- [Spec-Driven Development](https://spec-driven.dev)
- [Git Worktrees Documentation](https://git-scm.com/docs/git-worktree)

---
*Documento creado: 2026-03-22*
*Autor: Diego Saavedra García*
*Versión: 1.0*