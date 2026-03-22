#!/bin/bash
# install-ironman-stack.sh
# Script de instalación unificada para Iron Man Evolution
# Instala todas las herramientas de IA para desarrollo

set -e

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Banner
echo -e "${RED}🦾 Iron Man Evolution - Instalador de Arsenal${NC}"
echo -e "${RED}========================================${NC}"
echo ""

# Función para imprimir status
print_status() {
    echo -e "${BLUE}[*]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

print_error() {
    echo -e "${RED}[✗]${NC} $1"
}

print_section() {
    echo ""
    echo -e "${PURPLE}═══════════════════════════════════════${NC}"
    echo -e "${PURPLE} $1${NC}"
    echo -e "${PURPLE}═══════════════════════════════════════${NC}"
}

# Verificar sistema operativo
detect_os() {
    print_status "Detectando sistema operativo..."
    
    if [[ "$OSTYPE" == "darwin"* ]]; then
        OS="macos"
        print_success "macOS detectado"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        OS="linux"
        print_success "Linux detectado"
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        OS="windows"
        print_success "Windows detectado"
    else
        OS="unknown"
        print_warning "Sistema operativo no reconocido: $OSTYPE"
    fi
}

# Verificar dependencias
check_dependencies() {
    print_section "Verificando Dependencias"
    
    dependencies=("git" "curl" "node" "npm" "python3" "pip3")
    
    for dep in "${dependencies[@]}"; do
        if command -v $dep &> /dev/null; then
            version=$(eval "$dep --version 2>/dev/null | head -n1" || echo "unknown")
            print_success "$dep instalado: $version"
        else
            print_warning "$dep no encontrado"
        fi
    done
}

# Instalar Claude Code
install_claude_code() {
    print_section "Instalando Claude Code (J.A.R.V.I.S. Nativo)"
    
    if command -v claude &> /dev/null; then
        print_success "Claude Code ya está instalado"
        return
    fi
    
    print_status "Instalando Claude Code..."
    
    if [[ "$OS" == "macos" || "$OS" == "linux" ]]; then
        npm install -g @anthropic-ai/claude-code
        if [ $? -eq 0 ]; then
            print_success "Claude Code instalado correctamente"
        else
            print_error "Error instalando Claude Code"
        fi
    else
        print_warning "Claude Code requiere npm. Instalar Node.js primero."
    fi
}

# Instalar OpenCode
install_opencode() {
    print_section "Instalando OpenCode (Flexible y Open Source)"
    
    if command -v opencode &> /dev/null; then
        print_success "OpenCode ya está instalado"
        return
    fi
    
    print_status "Instalando OpenCode..."
    
    if [[ "$OS" == "macos" ]]; then
        if command -v brew &> /dev/null; then
            brew install anomalyco/tap/opencode
            print_success "OpenCode instalado via Homebrew"
        else
            curl -fsSL https://opencode.ai/install | bash
            print_success "OpenCode instalado via script"
        fi
    elif [[ "$OS" == "linux" ]]; then
        curl -fsSL https://opencode.ai/install | bash
        print_success "OpenCode instalado"
    else
        print_warning "OpenCode: https://opencode.ai para instalación manual"
    fi
}

# Instalar Gemini CLI
install_gemini() {
    print_section "Instalando Gemini CLI (Gratis de Google)"
    
    if command -v gemini &> /dev/null; then
        print_success "Gemini CLI ya está instalado"
        return
    fi
    
    print_status "Instalando Gemini CLI..."
    
    npm install -g @google/gemini-cli
    
    if [ $? -eq 0 ]; then
        print_success "Gemini CLI instalado correctamente"
        print_warning "Necesitas cuenta Google para usarlo gratis"
    else
        print_error "Error instalando Gemini CLI"
    fi
}

# Instalar KiloCode
install_kilocode() {
    print_section "Instalando KiloCode (Multi-Modelo)"
    
    # Verificar VS Code
    if command -v code &> /dev/null; then
        print_status "Instalando extensión KiloCode para VS Code..."
        code --install-extension kilo-code.kilo-code
        print_success "Extensión KiloCode instalada"
    else
        print_warning "VS Code no encontrado. Instalar VS Code primero."
    fi
    
    # Instalar CLI
    if command -v npm &> /dev/null; then
        print_status "Instalando KiloCode CLI..."
        npm install -g @kilo-code/cli
        print_success "KiloCode CLI instalado"
    fi
}

# Instalar Amp
install_amp() {
    print_section "Instalando Amp (Asistente Ligero)"
    
    if command -v amp &> /dev/null; then
        print_success "Amp ya está instalado"
        return
    fi
    
    print_status "Instalando Amp..."
    
    npm install -g @anthropic-ai/amp
    
    if [ $? -eq 0 ]; then
        print_success "Amp instalado correctamente"
    else
        print_error "Error instalando Amp"
    fi
}

# Instalar Kiro
install_kiro() {
    print_section "Instalando Kiro (Spec-Driven Development)"
    
    print_warning "Kiro es un IDE independiente (basado en VS Code)"
    print_warning "Descargar desde: https://kiro.aws/download"
    
    if [[ "$OS" == "macos" ]]; then
        print_status "Para macOS, puedes descargar el .dmg desde el sitio oficial"
    elif [[ "$OS" == "linux" ]]; then
        print_status "Para Linux, puedes descargar el .AppImage o .deb"
    fi
}

# Instalar Gentle AI Stack
install_gentle_ai() {
    print_section "Instalando Gentle AI Stack (Configuración Unificada)"
    
    if command -v gentle-ai &> /dev/null; then
        print_success "Gentle AI Stack ya está instalado"
        return
    fi
    
    print_status "Instalando Gentle AI Stack..."
    
    # Opción 1: Go install
    if command -v go &> /dev/null; then
        go install github.com/gentleman-programming/gentle-ai/cmd/gentle-ai@latest
        print_success "Gentle AI Stack instalado via Go"
    else
        # Opción 2: Script de instalación
        curl -fsSL https://raw.githubusercontent.com/Gentleman-Programming/gentle-ai/main/scripts/install.sh | bash
        print_success "Gentle AI Stack instalado via script"
    fi
    
    # Inicializar para proyecto actual
    if [ -d ".git" ] || [ -f "AGENTS.md" ]; then
        print_status "Inicializando Gentle AI Stack en proyecto actual..."
        gentle-ai init
    fi
}

# Configurar variables de entorno
setup_env_vars() {
    print_section "Configurando Variables de Entorno"
    
    # Crear archivo .env si no existe
    if [ ! -f ".env" ]; then
        cat > .env << 'EOF'
# Iron Man Evolution - Variables de Entorno
# Agrega tus API keys aquí

# Anthropic (Claude Code, Amp)
ANTHROPIC_API_KEY=

# OpenAI (OpenCode, Copilot)
OPENAI_API_KEY=

# Google (Gemini CLI)
GOOGLE_API_KEY=

# GitHub (MCP)
GITHUB_TOKEN=

# Base de datos (opcional)
DATABASE_URL=

# Redis (opcional)
REDIS_URL=
EOF
        
        print_success "Archivo .env creado"
        print_warning "编辑a .env y agrega tus API keys"
    else
        print_success "Archivo .env ya existe"
    fi
    
    # Agregar .env a .gitignore
    if [ -f ".gitignore" ]; then
        if ! grep -q ".env" .gitignore; then
            echo ".env" >> .gitignore
            print_success ".env agregado a .gitignore"
        fi
    else
        echo ".env" > .gitignore
        print_success ".gitignore creado con .env"
    fi
}

# Crear estructura de proyecto
create_project_structure() {
    print_section "Creando Estructura de Proyecto Iron Man Evolution"
    
    directories=("src" "tests" "skills" "context" "logs" "scripts" "docs" ".opencode" ".claude" ".kilo" ".gemini")
    
    for dir in "${directories[@]}"; do
        if [ ! -d "$dir" ]; then
            mkdir -p "$dir"
            print_success "Directorio creado: $dir"
        else
            print_success "Directorio existe: $dir"
        fi
    done
    
    # Crear AGENTS.md si no existe
    if [ ! -f "AGENTS.md" ]; then
        cat > AGENTS.md << 'EOF'
# Proyecto: Iron Man Evolution
# Configuración para Todos los Asistentes de IA

## 📋 Stack Tecnológico
- **Lenguaje Principal**: Python 3.11+
- **Framework**: FastAPI
- **Testing**: pytest
- **Agentes**: Claude Code, OpenCode, Gemini CLI, KiloCode

## 📁 Estructura del Proyecto
```
iron-man-project/
├── AGENTS.md           # Este archivo
├── .env               # Variables de entorno (NO committear)
├── src/               # Código fuente
├── tests/             # Tests unitarios
├── skills/            # Skills modulares
├── context/           # Archivos de contexto
├── logs/              # Logs de sesión
└── scripts/           # Scripts auxiliares
```

## 🎨 Convenciones de Código
- **Python**: snake_case para funciones, PascalCase para clases
- **Testing**: pytest con cobertura mínima 80%
- **Documentación**: Docstrings en español

## 🤖 Herramientas de IA Configuradas
Este proyecto soporta múltiples asistentes:

### Claude Code
```bash
claude --agents AGENTS.md
```

### OpenCode
```bash
opencode --agents AGENTS.md
```

### Gemini CLI
```bash
gemini --agents AGENTS.md
```

### KiloCode
Configuración en .kilo/settings.json

## 🚀 Comandos Útiles
```bash
# Ejecutar tests
pytest

# Ejecutar con cobertura
pytest --cov=src --cov-report=html

# Iniciar servidor de desarrollo
uvicorn src.main:app --reload
```

---
*Proyecto parte de Iron Man Evolution Course*
EOF
        print_success "AGENTS.md creado"
    else
        print_success "AGENTS.md ya existe"
    fi
}

# Mostrar resumen final
show_summary() {
    print_section "Resumen de Instalación"
    
    echo ""
    echo -e "${GREEN}🦾 Arsenal de Iron Man Evolution configurado${NC}"
    echo ""
    
    echo "Herramientas instaladas:"
    
    # Verificar cada herramienta
    tools=("claude:Claude Code" "opencode:OpenCode" "gemini:Gemini CLI" "kilo-code:KiloCode CLI" "amp:Amp")
    
    for tool in "${tools[@]}"; do
        IFS=':' read -r cmd name <<< "$tool"
        if command -v $cmd &> /dev/null; then
            echo -e "  ${GREEN}✓${NC} $name"
        else
            echo -e "  ${RED}✗${NC} $name (no instalado)"
        fi
    done
    
    echo ""
    echo "Próximos pasos:"
    echo "  1. Editar .env con tus API keys"
    echo "  2. Revisar AGENTS.md"
    echo "  3. Ejecutar: claude, opencode, o gemini en este proyecto"
    echo ""
    echo "Documentación: https://github.com/statick88/curso-iron-man-evolution"
    echo ""
}

# Función principal
main() {
    echo "Iniciando instalación del Arsenal de Iron Man Evolution..."
    echo ""
    
    detect_os
    check_dependencies
    
    # Preguntar qué instalar
    echo ""
    echo "¿Qué quieres instalar?"
    echo "1) Arsenal completo (todas las herramientas)"
    echo "2) Solo herramientas gratis (Gemini CLI, OpenCode, Amp)"
    echo "3) Solo Claude Code"
    echo "4) Personalizado"
    echo ""
    read -p "Selecciona una opción [1-4]: " choice
    
    case $choice in
        1)
            install_claude_code
            install_opencode
            install_gemini
            install_kilocode
            install_amp
            install_kiro
            install_gentle_ai
            ;;
        2)
            install_opencode
            install_gemini
            install_amp
            install_gentle_ai
            ;;
        3)
            install_claude_code
            install_gentle_ai
            ;;
        4)
            read -p "¿Instalar Claude Code? (s/n): " -n 1 -r
            echo
            [[ $REPLY =~ ^[sS]$ ]] && install_claude_code
            
            read -p "¿Instalar OpenCode? (s/n): " -n 1 -r
            echo
            [[ $REPLY =~ ^[sS]$ ]] && install_opencode
            
            read -p "¿Instalar Gemini CLI? (s/n): " -n 1 -r
            echo
            [[ $REPLY =~ ^[sS]$ ]] && install_gemini
            
            read -p "¿Instalar KiloCode? (s/n): " -n 1 -r
            echo
            [[ $REPLY =~ ^[sS]$ ]] && install_kilocode
            
            read -p "¿Instalar Amp? (s/n): " -n 1 -r
            echo
            [[ $REPLY =~ ^[sS]$ ]] && install_amp
            
            read -p "¿Instalar Kiro? (s/n): " -n 1 -r
            echo
            [[ $REPLY =~ ^[sS]$ ]] && install_kiro
            
            install_gentle_ai
            ;;
        *)
            print_error "Opción no válida"
            exit 1
            ;;
    esac
    
    setup_env_vars
    create_project_structure
    show_summary
}

# Ejecutar
main