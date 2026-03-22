---
title: "Lab 1: El Demo en la Cueva"
author: "Diego Saavedra García"
description: "Primer laboratorio: Configuración de tu base de operaciones como Tony Stark en la cueva"
---

# 🕳️ Lab 1: El Demo en la Cueva

## **Configuración de tu Base de Operaciones**

---

## 🎬 **La Situación**

> *"Para crear esto, necesitaba fuego. Mucho fuego."* — Tony Stark

Tony Stark despierta en una cueva en Afganistán. Herido, cautivo, sin recursos. Su única salida: construir un reactor arc en miniatura y usar esa energía para crear un arma de escape.

**El Mark I no era perfecto.** Era desordenado, ruidoso, limitado. Pero **funcionaba**.

**En este lab, tú eres Tony Stark en esa cueva.** No tienes toda la información. No tienes todas las herramientas. Pero tienes algo más poderoso: **la capacidad de crear algo desde nada usando IA.**

---

## ⏱️ **Timeline de la Misión**

| Paso | Descripción | Tiempo | Completado |
|------|-------------|--------|------------|
| 1 | Elegir tu "repartidor de energía" (herramienta IA) | 5 min | ⬜ |
| 2 | Diseñar tu sistema de organización | 15 min | ⬜ |
| 3 | Crear tu lista de contexto default | 20 min | ⬜ |
| 4 | Ejecutar tu primer "reactor arc" (request con contexto) | 10 min | ⬜ |
| **Total** | | **50 min** | |

---

## 🎯 **Objetivo del Lab**

Configurar tu base de operaciones y definir tu "protocolo de contexto" antes de interactuar con IA. Al finalizar, tendrás:

1. ✅ Una herramienta de IA seleccionada
2. ✅ Un sistema de organización para tus conversaciones
3. ✅ Una lista de contexto default
4. ✅ Tu primer prompt con contexto completo

---

## ⚠️ **Regla del Stark Protocol**

> **"Contexto antes que Prompt"** — J.A.R.V.I.S.

**REGLA ORO**: Los ejercicios te hacen completar, no copiar. Esto te obliga a pensar.

---

## 1. **Prerrequisitos**

### 1.1. **Herramientas Necesarias**

| Herramienta | Propósito | Recomendación |
|-------------|-----------|---------------|
| **Herramienta de IA** | Tu "repartidor de energía" | ChatGPT, Claude, Gemini, Copilot |
| **Editor de código** | Tu "taller de armadura" | VS Code, Cursor, Zed |
| **Terminal/Consola** | Tu "panel de control" | Terminal, iTerm2, Windows Terminal |
| **Conexión a internet** | Tu "suministro de energía" | Estable, mínima 5 Mbps |

### 1.2. **Conocimiento Requisito**

- ✅ Saber abrir un programa
- ✅ Saber copiar y pegar
- ✅ Saber crear un archivo de texto

**Si no tienes esto**, ve al [Curso de Prerrequisitos](../contenido/prerrequisitos.qmd) primero.

---

## 2. **Escenario de la Misión**

Eres Tony Stark en la cueva. Tienes acceso limitado a recursos, pero necesitas crear tu primer "reactor arc" — un sistema básico pero funcional que te permita:

1. **Definir** quién eres y qué necesitas
2. **Organizar** tu espacio de trabajo
3. **Ejecutar** tu primer comando con contexto

> *"Mark I. No es elegante. No es particularmente limpio. Pero funciona."* — Tony Stark

---

## 3. **Pasos de la Misión**

### **Paso 1: Elige tu "Repartidor de Energía" 🛠️**

**Objetivo**: Seleccionar la herramienta de IA que será tu fuente de energía principal.

**Toma de decisión**:

| Tu Prioridad | Herramienta Recomendada | Por qué |
|--------------|-------------------------|---------|
| **Calidad de código** | Claude | Mejor para desarrollo |
| **Ecosistema integrado** | ChatGPT | Más plugins y herramientas |
| **Costo mínimo** | Gemini | Tiene versión gratuita |
| **Coding directo** | Copilot | Se integra en el editor |

**Registro de tu elección**:

```markdown
## Mi Repartidor de Energía
- **Herramienta elegida**: ________________
- **Razón principal**: ________________
- **Alternativa si falla**: ________________
```

---

### **Paso 2: Diseña tu Sistema de Organización 📁**

**Objetivo**: Crear un sistema para guardar y encontrar tus conversaciones con IA.

**Contexto**: Stark tenía archivos de "mantenimiento predictivo" para analizar logs del reactor. Necesitas un sistema similar para tus conversaciones.

**Estructura recomendada**:

```bash
# Crea tu base de operaciones
mkdir -p ~/iron-man-project/{prompts,scripts,context,logs}
```

**Tu estructura personalizada**:

```markdown
## Mi Sistema de Organización
1. **Carpetas principales**: ________________
2. **Sistema de naming**: ________________  
3. **Ubicación de logs**: ________________
4. **Backup strategy**: ________________
```

---

### **Paso 3: Tu "Código de Contexto" Default 📋**

**Objetivo**: Definir qué información SIEMPRE incluyes en tus prompts.

**Regla J.A.R.V.I.S.**:

> **"El contexto es limitado. Úsalo sabiamente."**

**Componentes esenciales**:

```markdown
## Mi Contexto Default (SIEMPRE incluir)

### 1. Sobre mí
- Nivel de experiencia: ________________
- Lenguaje preferido: ________________
- Estilo de código: ________________

### 2. Sobre el proyecto
- Dominio/tipo: ________________
- Tecnologías: ________________
- Restricciones: ________________

### 3. Sobre la salida
- Formato preferido: ________________
- Idioma: ________________
- Nivel de detalle: ________________
```

---

### **Paso 4: Tu Primer "Reactor Arc" (Request con Contexto) ⚡**

**Objetivo**: Ejecutar tu primer request a IA con contexto completo.

**Misión**: Necesitas una función que valide contraseñas para un sistema de autenticación.

**Versión SIN contexto (MARK I defectuoso)**:
```markdown
Escríbeme una función que valide passwords
```
> ⚠️ Esto como el primer intento de Tony en la cueva — sin especificaciones, sin restricciones.

**Versión CON contexto (MARK I funcional)**:
```markdown
Actúa como un desarrollador senior de Python especializado en seguridad.

Necesito una función `validate_password(password: str) -> bool` que valide contraseñas para un sistema de autenticación corporativa.

**Restricciones**:
- Mínimo 8 caracteres
- Al menos 1 mayúscula
- Al menos 1 número  
- Al menos 1 carácter especial (!@#$%^&*)
- No permitir secuencias comunes (123, abc, qwerty)
- No permitir el nombre del usuario como parte del password

**Formato de salida**:
- Código Python con type hints
- Comentarios explicativos en español
- Tests unitarios con pytest
- Manejo de casos edge (None, empty string, no ASCII)

**Casos especiales**:
- Unicode characters
- Espacios al inicio/final
- Longitudes extremas (1-128 chars)
```

---

## 4. **Reflexión del Piloto**

> *"Cada conversación revela algo nuevo que faltaba."* — J.A.R.V.I.S.

### **Análisis Post-Misión**

Después de completar los pasos, responde estas preguntas:

**Pregunta 1: Diferencia de Resultados**
> ¿Qué diferencia notas entre tu versión con contexto y sin contexto?

```markdown
## Análisis de Diferencias

**Resultado SIN contexto**: 
_______________________________________________

**Resultado CON contexto**: 
_______________________________________________

**Diferencia clave**: 
_______________________________________________
```

**Pregunta 2: El Por Qué**
> ¿Por qué el contexto cambia el resultado de forma tan drástica?

```markdown
## El Poder del Contexto

**Explicación técnica**: 
_______________________________________________

**Analogía con Iron Man**: 
_______________________________________________
```

**Pregunta 3: Autoconocimiento**
> ¿Qué aprendiste sobre tu propio estilo de trabajo con IA?

```markdown
## Descubrimiento Personal

**Mi patrón de trabajo**: 
_______________________________________________

**Mi mejora para la próxima**: 
_______________________________________________
```

---

## 5. **Ejercicios de Entrenamiento**

### **Ejercicio Obligatorio: Tu Protocolo Personal**

1. **Elige un proyecto real** que tengas (puede ser un script simple, una web, etc.)
2. **Define cómo lo organizarás** en tu sistema de IA
3. **Escribe tu lista de contexto default** específica para ese proyecto
4. **Prueba tu primer request** con contexto completo para ese proyecto

### **Ejercicio Avanzado (Opcional)**

Crea un script que:
1. Genere automáticamente tu contexto default basado en respuestas que des
2. Formatee la salida como un prompt listo para usar
3. Guarde el prompt en tu carpeta de prompts

---

## 6. **Verificación de la Misión**

### **Checklist del Stark Protocol**

**Antes de avanzar, verifica que tienes**:

- [ ] ✅ Herramienta de IA elegida y probada
- [ ] ✅ Sistema de organización creado y documentado  
- [ ] ✅ Lista de contexto default definida
- [ ] ✅ Al menos un prompt con contexto ejecutado
- [ ] ✅ Reflexiones completadas en tu protocolo
- [ ] ✅ Archivo `mi_protocolo.md` guardado

### **Prueba de Fuego**

Ejecuta este comando para verificar tu setup:

```bash
# Verifica que tienes la estructura básica
ls -la ~/iron-man-project/

# Deberías ver:
# prompts/  scripts/  context/  logs/
```

---

## 7. **Entregable: Tu Protocolo Stark**

### **Archivo a Crear**: `mi_protocolo.md`

**Estructura requerida**:

```markdown
# Mi Protocolo Stark - Nivel 1
# Piloto: [Tu nombre]
# Fecha: [Fecha actual]

## 1. Herramienta Elegida
- **Repartidor principal**: [Tu herramienta]
- **Alternativa**: [Segunda opción]
- **Razón de elección**: [Por qué elegiste esta]

## 2. Sistema de Organización
- **Estructura de carpetas**: 
  ```
  ~/iron-man-project/
  ├── prompts/     # [propósito]
  ├── scripts/     # [propósito]
  ├── context/     # [propósito]
  └── logs/        # [propósito]
  ```
- **Sistema de naming**: [Tu convención]
- **Backup**: [Tu estrategia]

## 3. Contexto Default
### Sobre mí:
1. [Tu experiencia]
2. [Tus preferencias]
3. [Tus restricciones]

### Sobre el proyecto:
1. [Dominio]
2. [Tecnologías]
3. [Limitaciones]

## 4. Ejemplo de Prompt con Contexto
[Pegar aquí tu mejor prompt del ejercicio 4]

## 5. Reflexiones
- **Diferencia clave**: [Tu hallazgo]
- **Por qué funciona**: [Tu explicación]
- **Mi mejora**: [Tu plan]
```

---

## 8. **Recursos de la Misión**

### **Documentación Oficial**
- [ChatGPT](https://chat.openai.com) — Tu primer repartidor
- [Claude](https://claude.ai) — Especialista en código
- [Gemini](https://gemini.google.com) — Integración Google
- [VS Code](https://code.visualstudio.com/) — Tu taller de armadura

### **Guías de Referencia**
- [Prompt Engineering Guide](https://www.promptingguide.ai/) — Manual de prompts
- [Context Engineering vs Prompt Engineering](../contenido/nivel2.qmd) — Siguiente nivel
- [Iron Man Evolution Course](../index.qmd) — Vista completa del curso

---

## 9. **Logro Desbloqueado: "El Primer Reactor"**

### **Recompensa por Completar este Lab**
- **+100 XP** por configurar tu base de operaciones
- **Logro "Survivor"** — Primer sistema funcional
- **Acceso** a [Nivel 2: El Mark I](../contenido/nivel2.qmd)

### **Siguiente Paso**
> *"Mark I. No es elegante. No es particularmente limpio. Pero funciona."*

Ahora que tienes tu primer reactor arc, es hora de construir tu primera armadura: **[Nivel 2: El Mark I →](../contenido/nivel2.qmd)**
