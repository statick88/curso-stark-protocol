---
title: "Skills - Habilidades Especializadas"
author: "Diego Saavedra García"
description: "Sistema de habilidades para agentes de IA"
---

# 🎯 Skills

## **Habilidades Especializadas para IA**

---

## 📋 **Descripción**

Los Skills son módulos de instrucciones especializadas que se cargan automáticamente según el contexto. Son como "modos de trabajo" para agentes de IA.

## 🏗️ **Estructura de un Skill**

```yaml
# SKILL.md
name: "typescript"
description: "TypeScript strict patterns and best practices"
trigger: "When writing TypeScript code"

instructions: |
  ## TypeScript Strict Mode
  
  ### Reglas Obligatorias
  1. Usar `strict: true` en tsconfig.json
  2. Evitar `any` - usar `unknown` si es necesario
  3. Type hints en todas las funciones
  4. Interfaces para objetos, types para uniones
  
  ### Ejemplo
  ```typescript
  // ✅ Correcto
  function greet(name: string): string {
    return `Hello, ${name}!`;
  }
  
  // ❌ Incorrecto
  function greet(name) {
    return "Hello, " + name;
  }
  ```
```

## 🔧 **Carga Automática de Skills**

### **Smart Dispatcher**
```python
class SkillDispatcher:
    """Detecta contexto y carga skills apropiadas"""
    
    SKILLS = {
        "react": ["react-19", "typescript", "zustand-5"],
        "angular": ["angular-core", "angular-forms", "typescript"],
        "python-api": ["fastapi", "pytest", "security"],
        "devops": ["docker", "kubernetes", "terraform"],
    }
    
    def detect_stack(self, project_files: List[str]) -> List[str]:
        """Detecta stack tecnológico y retorna skills"""
        detected = []
        
        if "package.json" in project_files:
            if self._has_dependency("react", project_files):
                detected.extend(self.SKILLS["react"])
        
        if "requirements.txt" in project_files:
            if self._has_dependency("fastapi", project_files):
                detected.extend(self.SKILLS["python-api"])
        
        return list(set(detected))  # Sin duplicados
```

## 📊 **Skills Disponibles**

### **Desarrollo Frontend**
| Skill | Trigger | Contenido |
|-------|---------|-----------|
| `react-19` | Componentes React | Patrones React 19, hooks, server components |
| `angular-core` | Componentes Angular | Standalone, signals, control flow |
| `typescript` | Código TypeScript | Strict mode, generics, type guards |
| `tailwind-4` | Estilos Tailwind | Patrones Tailwind 4, dark mode |

### **Desarrollo Backend**
| Skill | Trigger | Contenido |
|-------|---------|-----------|
| `fastapi` | APIs FastAPI | Pydantic, dependencies, async |
| `django-drf` | APIs Django | ViewSets, serializers, filters |
| `spring-boot-3` | Apps Spring | Configuration, DI, web services |

### **DevOps & Security**
| Skill | Trigger | Contenido |
|-------|---------|-----------|
| `docker` | Contenedores | Dockerfile, compose, multi-stage |
| `security` | Auth/Validación | OWASP, input validation, JWT |
| `devsecops` | CI/CD seguro | SAST/DAST, dependency scanning |

### **IA & Agentes**
| Skill | Trigger | Contenido |
|-------|---------|-----------|
| `sdd-*` | Spec-Driven Dev | Proposal → Spec → Design → Tasks |
| `engram` | Memoria persistente | Save/search/context commands |
| `mcp` | Herramientas IA | Protocolo de comunicación |

## 🔗 **Recursos**

- [Directorio de Skills](https://github.com/Gentleman-Programming/gentle-ai/tree/main/skills)
- [Crear tu Propio Skill](https://github.com/Gentleman-Programming/gentle-ai/tree/main/skills/custom)
- [Skills Registry](https://github.com/Gentleman-Programming/gentle-ai/tree/main/skills/registry)
