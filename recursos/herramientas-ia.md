---
title: "Herramientas de Asistentes de IA para Desarrollo (2026)"
author: "Diego Saavedra García"
description: "Comparación completa de asistentes de IA para desarrollo: OpenCode, KiloCode, Claude Code, Gemini CLI, Kiro, Amp y más"
---

# 🛠️ Herramientas de Asistentes de IA para Desarrollo

## **El Arsenal de Tony Stark en 2026**

---

## 🎯 **Visión General**

En 2026, los asistentes de IA para desarrollo se han dividido en **tres categorías principales**:

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│              ASISTENTES DE IA PARA DESARROLLO (CATEGORÍAS 2026)                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│                         ┌─────────────────────────┐                             │
│                         │   ASISTENTES DE IA      │                             │
│                         │   PARA DESARROLLO       │                             │
│                         └───────────┬─────────────┘                             │
│                                     │                                           │
│         ┌───────────────────────────┼───────────────────────────┐               │
│         │                           │                           │               │
│         ▼                           ▼                           ▼               │
│ ┌───────────────────┐   ┌─────────────────────┐   ┌─────────────────────────┐   │
│ │  INLINE SUGGESTION│   │    AGENTIC CLI      │   │   SPEC-DRIVEN IDE       │   │
│ │  ──────────────── │   │   ─────────────     │   │   ─────────────────     │   │
│ │                   │   │                     │   │                         │   │
│ │ • GitHub Copilot  │   │ • Claude Code       │   │ • Kiro (Amazon)         │   │
│ │ • Windsurf        │   │ • OpenCode          │   │ • Antigravity (Google)  │   │
│ │ • Cursor Inline   │   │ • Gemini CLI        │   │                         │   │
│ │                   │   │ • Aider             │   │                         │   │
│ │                   │   │ • Goose             │   │                         │   │
│ └───────────────────┘   └─────────────────────┘   └─────────────────────────┘   │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

---

## 📊 **Tabla Comparativa Principal**

| Característica | **OpenCode** | **KiloCode** | **Claude Code** | **Gemini CLI** | **Kiro** | **Amp** |
|----------------|--------------|--------------|-----------------|----------------|----------|---------|
| **Tipo** | Terminal Agent | IDE Extension + CLI | Terminal Agent | Terminal Agent | Spec-Driven IDE | Terminal Agent |
| **Open Source** | ✅ MIT | ✅ Apache 2.0 | ❌ | ❌ | ❌ | ✅ |
| **Precio** | Gratis (BYO API) | Gratis + Kilo Pass $19/mo | $20-200/mo | Gratis (Gemini 3) | $20-200/mo | Gratis (BYO API) |
| **Modelos** | 75+ proveedores | 500+ modelos | Solo Anthropic | Solo Google | AWS Models | Múltiples |
| **Context Window** | Segun modelo | Según modelo | 1M tokens (Opus) | 1M tokens | Full project | Según modelo |
| **GitHub Stars** | 124K+ | 16K+ | N/A | N/A | N/A | Menos conocido |
| **MCP Support** | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| **AGENTS.md** | ✅ | ✅ | ✅ | ✅ | ✅ (Specs) | ✅ |
| **Orquestación** | ❌ | ✅ Orchestrator Mode | ✅ Subagents | ❌ | ✅ Hooks | ❌ |
| **Soporte IDE** | Terminal + VS Code | VS Code, JetBrains | VS Code, JetBrains | Terminal | Kiro IDE | Terminal |
| **Mejor para** | Flexibilidad, Privacidad | Multi-modelo, Open Source | Debugging complejo | Coste cero, Google ecosystem | SDD, Especificaciones | Tareas rápidas |

---

## 🔍 **Análisis Detallado por Herramienta**

### **1. OpenCode — El Caballero Oscuro**

#### **¿Qué es?**
OpenCode es un **agente de terminal open-source** construido en TypeScript/Bun con TUI en Go. Es **agnostic al proveedor** — funciona con 75+ proveedores de LLM.

#### **Características Principales**
```bash
# Instalación
curl -fsSL https://opencode.ai/install | bash
# o
brew install anomalyco/tap/opencode

# Uso básico
opencode
```

#### **Ventajas**
- ✅ **Gratuito** (BYO API key)
- ✅ **75+ proveedores**: OpenAI, Anthropic, Google, AWS Bedrock, Groq, Ollama
- ✅ **Open source** (MIT)
- ✅ **TUI interactivo**
- ✅ **Multi-sesión**
- ✅ **LSP support**

#### **Desventajas**
- ❌ Sin orquestación nativa
- ❌ Más complejo de configurar
- ❌ Comunidad más pequeña que Copilot

#### **Configuración para Iron Man Evolution**
```yaml
# .opencode/config.yaml
models:
  default: "anthropic/claude-3-opus-20240229"
  fallback: "openai/gpt-4-turbo"
  
providers:
  anthropic:
    api_key: ${ANTHROPIC_API_KEY}
  openai:
    api_key: ${OPENAI_API_KEY}
  google:
    api_key: ${GOOGLE_API_KEY}

context:
  max_tokens: 100000
  include_patterns:
    - "src/**/*.py"
    - "tests/**/*.py"
  exclude_patterns:
    - "node_modules/**"
    - ".git/**"
```

---

### **2. KiloCode — El Arsenal Completo**

#### **¿Qué es?**
KiloCode es una **extensión de VS Code/JetBrains** fork de Cline, con **Orchestrator Mode** y soporte para **500+ modelos** sin markup.

#### **Características Principales**
```bash
# Instalación (VS Code)
code --install-extension kilo-code.kilo-code

# Instalación CLI
npm install -g @kilo-code/cli

# Uso
kilo-code
```

#### **Ventajas**
- ✅ **500+ modelos** a precio exacto del proveedor
- ✅ **Orchestrator Mode** para multi-agente
- ✅ **Memory Bank** para memoria persistente
- ✅ **Soporte JetBrains**
- ✅ **App Builder** integrado
- ✅ **Auto-completado** integrado

#### **Desventajas**
- ❌ reports de issues con context bloat
- ❌ Menos maduro que Cline original
- ❌ Comunidad más pequeña

#### **Configuración para Iron Man Evolution**
```json
{
  "kilo-code": {
    "model": "anthropic/claude-3-opus-20240229",
    "mode": "orchestrator",
    "maxTokens": 100000,
    "agents": {
      "testing": {
        "model": "anthropic/claude-3-sonnet-20240229",
        "focus": "testing"
      },
      "security": {
        "model": "openai/gpt-4-turbo",
        "focus": "security audit"
      }
    }
  }
}
```

---

### **3. Claude Code — El J.A.R.V.I.S. Nativo**

#### **¿Qué es?**
Claude Code es el **agente terminal nativo de Anthropic**. No es un IDE — es un agente que vive en tu terminal y puede leer archivos, ejecutar comandos, y iterar.

#### **Características Principales**
```bash
# Instalación
npm install -g @anthropic-ai/claude-code

# Uso
claude

# Con AGENTS.md
claude --agents AGENTS.md
```

#### **Ventajas**
- ✅ **1M tokens** de contexto (Opus 4.6)
- ✅ **Razonamiento profundo** — mejor para debugging complejo
- ✅ **Subagentes** nativos
- ✅ **Background agents**
- ✅ **Integración MCP** profunda
- ✅ **Agent teams** en Opus 4.6

#### **Desventajas**
- ❌ **Solo modelos Anthropic** — lock-in
- ❌ **Precio**: $20-200/mo según plan
- ❌ No open source

#### **Configuración para Iron Man Evolution**
```bash
# Iniciar en tu proyecto
cd ~/iron-man-project
claude

# Con configuración específica
claude --config config/claude-config.json

# Usar AGENTS.md automáticamente
claude --agents AGENTS.md
```

---

### **4. Gemini CLI — El Asistente Gratis de Google**

#### **¿Qué es?**
Gemini CLI es el **agente terminal de Google** que ofrece acceso **gratis** a Gemini 3 con **1M tokens** de contexto.

#### **Características Principales**
```bash
# Instalación
npm install -g @google/gemini-cli

# Uso (gratis con cuenta Google)
gemini

# Con API key
gemini --api-key $GOOGLE_API_KEY
```

#### **Ventajas**
- ✅ **Gratis** con cuenta Google
- ✅ **1M tokens** de contexto
- ✅ **Cero configuración** en máquina nueva
- ✅ Integración con Google Cloud
- ✅ **Gemini 2.5 Pro** disponible

#### **Desventajas**
- ❌ Solo modelos Google
- ❌ Menos capacidades agénticas que Claude Code
- ❌ Privacidad: datos a Google

#### **Configuración para Iron Man Evolution**
```yaml
# ~/.gemini/config.yaml
model: "gemini-2.5-pro"
temperature: 0.7
max_tokens: 1000000

context:
  project_root: "~/iron-man-project"
  include:
    - "src/**"
    - "tests/**"
  exclude:
    - "node_modules/**"
    - ".git/**"
```

---

### **5. Kiro (Amazon) — El Revolucionario SDD**

#### **¿Qué es?**
Kiro es el **IDE de Amazon** que revoluciona el desarrollo con **Spec-Driven Development**. No es solo un asistente — es un **nuevo paradigma** de desarrollo.

#### **Características Principales**
```bash
# Instalación
# Descargar desde https://kiro.aws
# Es un IDE basado en VS Code

# Uso
# Abre Kiro y describe lo que quieres construir
```

#### **Ventajas**
- ✅ **Spec-Driven Development** nativo
- ✅ **Hooks** (automatización basada en eventos)
- ✅ **Full project context** 
- ✅ **Structured output** de alta calidad
- ✅ Integración AWS profunda
- ✅ **Steerling** — diseño de UI con IA

#### **Desventajas**
- ❌ **Nuevo** (julio 2025) — menos maduro
- ❌ **Precio**: $20-200/mo
- ❌ **Lock-in** a AWS ecosystem
- ❌ **Paradigma diferente** — curva de aprendizaje

#### **Configuración para Iron Man Evolution**
```yaml
# .kiro/specs/iron-man-evolution/spec.yaml
name: "Iron Man Evolution"
description: "Curso de desarrollo con IA"

requirements:
  - id: FR-001
    title: "Sistema de niveles"
    description: "6 niveles progresivos inspirados en Iron Man"
    
  - id: FR-002
    title: "Gentle AI Stack"
    description: "Integración completa con Engram, MCP, Skills"

hooks:
  - trigger: "on_save"
    action: "run_tests"
    
  - trigger: "on_commit"
    action: "validate_specs"
```

---

### **6. Amp — El Asistente Ligero**

#### **¿Qué es?**
Amp es un **agente de terminal open-source** más ligero, enfocado en **tareas rápidas** sin la complejidad de herramientas más grandes.

#### **Características Principales**
```bash
# Instalación
npm install -g @anthropic-ai/amp

# Uso
amp "Create a Python function to calculate energy"
```

#### **Ventajas**
- ✅ **Ligero** y rápido
- ✅ **Open source**
- ✅ **Sin configuración** compleja
- ✅ **Tareas rápidas**
- ✅ **Múltiples modelos**

#### **Desventajas**
- ❌ Menos features que Claude Code
- ❌ Sin orquestación
- ❌ Comunidad pequeña

#### **Configuración para Iron Man Evolution**
```bash
# Configuración básica
amp configure

# Uso con AGENTS.md
amp --agents AGENTS.md "Write tests for reactor.py"
```

---

## 🎮 **Guía de Selección: ¿Qué Herramienta Usar?**

### **Matriz de Decisión**

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                        MATRIZ DE DECISIÓN: ¿QUÉ HERRAMIENTA USAR?               │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│                      ¿NECESITAS ASISTENTE DE IA?                                │
│                               │                                                 │
│                               ▼                                                 │
│               ┌─────────────────────────────────┐                               │
│               │        ¿CUÁL ES TU              │                               │
│               │        PRESUPUESTO?              │                               │
│               └────────────┬────────────────────┘                               │
│                            │                                                    │
│              ┌─────────────┴─────────────┐                                      │
│              │                           │                                      │
│              ▼                           ▼                                      │
│     ┌─────────────────┐         ┌─────────────────┐                             │
│     │     GRATIS      │         │ DISPUESTO A PAGAR│                             │
│     └────────┬────────┘         └────────┬────────┘                             │
│              │                           │                                      │
│              ▼                           ▼                                      │
│   ┌───────────────────┐       ┌───────────────────┐                             │
│   │ ¿QUÉ NECESITAS?   │       │ ¿QUÉ PRIORIDAD?   │                             │
│   └─────────┬─────────┘       └─────────┬─────────┘                             │
│             │                           │                                      │
│     ┌───────┼───────┐           ┌───────┼───────┐                               │
│     │       │       │           │       │       │                               │
│     ▼       ▼       ▼           ▼       ▼       ▼                               │
│ ┌───────┐┌───────┐┌───────┐ ┌───────┐┌───────┐┌───────┐                         │
│ │FLEXI- ││GOOGLE ││MULTI- │ │DEBUG  ││SPEC-  ││MULTI- │                         │
│ │BILIDAD││ECO-   ││MODELO │ │COMPLE-││DRIVEN ││MODELO │                         │
│ │       ││SYSTEM ││       │ │JO     ││DEV    ││       │                         │
│ └───┬───┘└───┬───┘└───┬───┘ └───┬───┘└───┬───┘└───┬───┘                         │
│     │        │        │         │        │        │                              │
│     ▼        ▼        ▼         ▼        ▼        ▼                              │
│ ┌───────┐┌───────┐┌───────┐ ┌───────┐┌───────┐┌───────┐                         │
│ │OPENCODE││GEMINI ││KILO-  │ │CLAUDE ││ KIRO  ││KILOCODE│                        │
│ │       ││ CLI   ││ CODE  │ │ CODE  ││       ││KILO   │                         │
│ │       ││       ││GRATIS │ │       ││       ││PASS   │                         │
│ └───────┘└───────┘└───────┘ └───────┘└───────┘└───────┘                         │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

### **Escenarios de Uso**

| Escenario | Herramienta Recomendada | Por Qué |
|-----------|-------------------------|---------|
| **Presupuesto cero** | Gemini CLI | Gratis, 1M contexto |
| **Flexibilidad total** | OpenCode | 75+ proveedores, open source |
| **Debugging complejo** | Claude Code | Mejor razonamiento, 1M contexto |
| **Spec-Driven Development** | Kiro | Paradigma nativo SDD |
| **Multi-agente** | KiloCode | Orchestrator Mode |
| **Tareas rápidas** | Amp | Ligero, rápido |
| **Enterprise** | GitHub Copilot | Integración GitHub, governance |
| **Open source lover** | OpenCode | MIT, comunidad grande |

### **Stack Recomendado por Nivel**

#### **Principiante (Niveles 1-2)**
```yaml
herramientas:
  principal: "Gemini CLI"
  razon: "Gratis, fácil de empezar"
  alternativa: "OpenCode"
  
configuracion_basica:
  - Instalar una herramienta
  - Configurar AGENTS.md básico
  - Aprender prompting efectivo
```

#### **Intermedio (Niveles 3-4)**
```yaml
herramientas:
  principal: "Claude Code"
  razon: "Mejor debugging, subagentes"
  alternativa: "OpenCode con múltiples modelos"
  
configuracion:
  - AGENTS.md avanzado
  - Skills registry
  - Engram para memoria
  - MCP básico
```

#### **Avanzado (Niveles 5-6)**
```yaml
herramientas:
  principal: "Kiro + Claude Code"
  razon: "SDD con Kiro, debugging con Claude"
  alternativa: "KiloCode para orquestación"
  
stack_completo:
  - Gentle AI Stack
  - Engram + MCP + Skills
  - CI/CD pipeline
  - Múltiples agentes
```

---

## 🔧 **Configuración Multi-Herramienta**

### **Usar Múltiples Herramientas en el Mismo Proyecto**

```bash
# Estructura de proyecto multi-herramienta
iron-man-project/
├── .opencode/           # Config OpenCode
│   └── config.yaml
├── .claude/            # Config Claude Code
│   └── config.json
├── .kiro/              # Config Kiro
│   └── specs/
├── .kilo/              # Config KiloCode
│   └── settings.json
├── AGENTS.md           # Configuración común
├── context/            # Contexto compartido
├── skills/             # Skills compartidos
└── src/                # Código fuente
```

### **AGENTS.md Multi-Herramienta**

```markdown
# AGENTS.md - Configuración Común para Múltiples Herramientas

## Herramientas Configuradas
Este proyecto soporta múltiples asistentes de IA:

### 1. OpenCode
```yaml
# .opencode/config.yaml
models:
  default: "anthropic/claude-3-opus-20240229"
```

### 2. Claude Code
```json
// .claude/config.json
{
  "model": "claude-3-opus-20240229",
  "agents_md": "AGENTS.md"
}
```

### 3. KiloCode
```json
// .kilo/settings.json
{
  "model": "anthropic/claude-3-opus-20240229",
  "mode": "orchestrator"
}
```

## Reglas Comunes (aplican a TODAS las herramientas)
- Usa snake_case para Python
- Sigue PEP 8
- Incluye tests para cada función
- Documenta en español
```

### **Script de Configuración Unificada**

```bash
#!/bin/bash
# setup-ai-tools.sh
# Configura múltiples herramientas de IA para el proyecto

echo "🤖 Configurando herramientas de IA para Iron Man Evolution..."

# Verificar herramientas instaladas
TOOLS=("opencode" "claude" "kilo-code" "gemini" "kiro" "amp")

for tool in "${TOOLS[@]}"; do
    if command -v $tool &> /dev/null; then
        echo "✅ $tool está instalado"
    else
        echo "❌ $tool no está instalado"
        echo "   Instalar: "
        case $tool in
            "opencode")
                echo "   curl -fsSL https://opencode.ai/install | bash"
                ;;
            "claude")
                echo "   npm install -g @anthropic-ai/claude-code"
                ;;
            "kilo-code")
                echo "   code --install-extension kilo-code.kilo-code"
                ;;
            "gemini")
                echo "   npm install -g @google/gemini-cli"
                ;;
            "kiro")
                echo "   Descargar desde https://kiro.aws"
                ;;
            "amp")
                echo "   npm install -g @anthropic-ai/amp"
                ;;
        esac
    fi
done

# Crear archivos de configuración comunes
echo "📁 Creando estructura de configuración..."
mkdir -p .opencode .claude .kilo .gemini

# Copiar AGENTS.md a cada herramienta
if [ -f "AGENTS.md" ]; then
    echo "📋 AGENTS.md encontrado - será usado por todas las herramientas"
else
    echo "⚠️  No se encontró AGENTS.md - crear uno primero"
fi

echo ""
echo "🚀 Configuración completada!"
echo "💡 Usa 'opencode', 'claude', o 'gemini' en tu proyecto"
```

---

## 📊 **Benchmark: Mismo Modelo, Diferentes Herramientas**

### **Prueba: Kimi K2.5 en OpenCode vs KiloCode**

De acuerdo con análisis recientes, **el mismo modelo puede rendir diferente** según el harness:

| Tarea | OpenCode | KiloCode |
|-------|----------|----------|
| **Refactorización compleja** | ✅ Exitoso | ❌ Falló tool calls |
| **Debugging multi-archivo** | ✅ Limpio | ❌ Context bloating |
| **Generación de tests** | ✅ Confiable | ⚠️ Algunas alucinaciones |
| **Documentación** | ✅ Bueno | ✅ Aceptable |

### **Lección Aprendida**
> **"El harness importa tanto como el modelo. Un mal harness puede desperdiciar el potencial de Claude Opus 4.5."**

---

## 🛡️ **Seguridad Multi-Herramienta**

### **Proteger API Keys**
```bash
# .env (NO committear)
ANTHROPIC_API_KEY=sk-ant-xxx
OPENAI_API_KEY=sk-xxx
GOOGLE_API_KEY=AIza-xxx
GITHUB_TOKEN=ghp_xxx

# .gitignore
.env
.opencode/secrets.yaml
.claude/secrets.json
.kilo/secrets.json
```

### **Validación de Herramientas**
```python
# security/validate_tools.py
"""
Valida que las herramientas de IA estén configuradas correctamente.
"""

import os
import subprocess
from typing import Dict, List

class ToolValidator:
    """Validador de herramientas de IA."""
    
    REQUIRED_TOOLS = ["opencode", "claude", "gemini"]
    OPTIONAL_TOOLS = ["kilo-code", "kiro", "amp"]
    
    def __init__(self):
        self.results = {}
    
    def validate_all(self) -> Dict:
        """Valida todas las herramientas."""
        results = {
            "required": {},
            "optional": {},
            "env_vars": {},
            "configs": {}
        }
        
        # Verificar herramientas requeridas
        for tool in self.REQUIRED_TOOLS:
            results["required"][tool] = self.check_tool_installed(tool)
        
        # Verificar herramientas opcionales
        for tool in self.OPTIONAL_TOOLS:
            results["optional"][tool] = self.check_tool_installed(tool)
        
        # Verificar variables de entorno
        env_vars = [
            "ANTHROPIC_API_KEY",
            "OPENAI_API_KEY", 
            "GOOGLE_API_KEY",
            "GITHUB_TOKEN"
        ]
        
        for var in env_vars:
            results["env_vars"][var] = bool(os.getenv(var))
        
        # Verificar archivos de configuración
        config_files = [
            ".opencode/config.yaml",
            ".claude/config.json",
            ".kilo/settings.json",
            "AGENTS.md"
        ]
        
        for config in config_files:
            results["configs"][config] = os.path.exists(config)
        
        return results
    
    def check_tool_installed(self, tool: str) -> bool:
        """Verifica si una herramienta está instalada."""
        try:
            subprocess.run(
                [tool, "--version"],
                capture_output=True,
                timeout=5
            )
            return True
        except:
            return False
    
    def print_report(self):
        """Imprime reporte de validación."""
        results = self.validate_all()
        
        print("\n🤖 Reporte de Herramientas de IA")
        print("=" * 50)
        
        print("\n📦 Herramientas Requeridas:")
        for tool, installed in results["required"].items():
            status = "✅" if installed else "❌"
            print(f"  {status} {tool}")
        
        print("\n📦 Herramientas Opcionales:")
        for tool, installed in results["optional"].items():
            status = "✅" if installed else "⚠️"
            print(f"  {status} {tool}")
        
        print("\n🔑 Variables de Entorno:")
        for var, set_ in results["env_vars"].items():
            status = "✅" if set_ else "❌"
            print(f"  {status} {var}")
        
        print("\n⚙️ Archivos de Configuración:")
        for config, exists in results["configs"].items():
            status = "✅" if exists else "❌"
            print(f"  {status} {config}")

# Uso
if __name__ == "__main__":
    validator = ToolValidator()
    validator.print_report()
```

---

## 📚 **Recursos por Herramienta**

### **OpenCode**
- 🌐 [Sitio Oficial](https://opencode.ai)
- 📦 [GitHub](https://github.com/anomalyco/opencode)
- 📖 [Documentación](https://opencode.ai/docs)
- 💬 [Discord](https://discord.com/invite/opencode)

### **KiloCode**
- 🌐 [Sitio Oficial](https://kilocode.ai)
- 📦 [GitHub](https://github.com/kilo-code/kilo-code)
- 📖 [Documentación](https://kilocode.ai/docs)
- 💬 [Discord](https://discord.com/invite/kilo-code)

### **Claude Code**
- 🌐 [Sitio Oficial](https://docs.anthropic.com/claude-code)
- 📦 [npm](https://www.npmjs.com/package/@anthropic-ai/claude-code)
- 📖 [Documentación](https://docs.anthropic.com/claude-code/docs)
- 🎬 [Tutorial](https://www.youtube.com/watch?v=SOxuW5K2FFY)

### **Gemini CLI**
- 🌐 [Sitio Oficial](https://ai.google.dev/gemini-api)
- 📦 [npm](https://www.npmjs.com/package/@google/gemini-cli)
- 📖 [Documentación](https://ai.google.dev/docs)
- 🆓 [Gratis con Google Account](https://gemini.google.com)

### **Kiro**
- 🌐 [Sitio Oficial](https://kiro.aws)
- 📥 [Descargar](https://kiro.aws/download)
- 📖 [Documentación](https://kiro.aws/docs)
- 🎬 [Videos](https://www.youtube.com/@kiro-aws)

### **Amp**
- 📦 [npm](https://www.npmjs.com/package/@anthropic-ai/amp)
- 📖 [Documentación](https://docs.anthropic.com/amp)
- 🆓 [Gratis](https://www.anthropic.com/amp)

---

## 🔗 **Integración con Iron Man Evolution**

### **Cómo Encajan las Herramientas en los Niveles**

| Nivel Iron Man | Herramientas Recomendadas | Uso |
|----------------|---------------------------|-----|
| **1. Demo en la Cueva** | Gemini CLI (gratis) | Primeros prompts, scripts básicos |
| **2. Mark I** | OpenCode (flexible) | AGENTS.md, contexto |
| **3. Mark III** | Claude Code (potente) | Agentes, debugging |
| **4. JARVIS Avanzado** | KiloCode (multi-agente) | Orquestación, Engram, MCP |
| **5. Ultron** | Kiro (SDD) | Especificaciones, controles |
| **6. Nanotech** | Stack completo | Todas integradas |

### **Comando de Instalación Unificada**
```bash
# Instalar todo el stack de Iron Man Evolution
curl -fsSL https://raw.githubusercontent.com/Gentleman-Programming/gentle-ai/main/scripts/install-ironman-stack.sh | bash
```

---

## 🚀 **Próximos Pasos**

1. **Instala** la herramienta que mejor se adapte a tu nivel
2. **Configura** AGENTS.md según el tutorial
3. **Practica** con los ejercicios de cada nivel
4. **Experimenta** con múltiples herramientas
5. **Contribuye** a las comunidades open source

---

*"No se trata de tener la mejor herramienta. Se trata de tener las herramientas correctas para cada situación."*
— Tony Stark (probablemente)