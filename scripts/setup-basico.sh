#!/bin/bash
# setup-basico.sh
# Script de instalación SIMPLIFICADO para principiantes absolutos
# Solo instala lo mínimo necesario para comenzar Iron Man Evolution

set -e

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🦾 Iron Man Evolution - Configuración Básica para Principiantes${NC}"
echo -e "${GREEN}============================================================${NC}"
echo ""
echo "Este script instala solo lo MÍNIMO necesario para comenzar."
echo "No te preocupes si no entiendes todo — lo explicaremos en el curso."
echo ""

# Función para esperar
esperar() {
    echo ""
    echo -e "${YELLOW}Presiona Enter para continuar...${NC}"
    read
}

# Verificar si el usuario puede usar terminal
echo -e "${BLUE}🔍 Verificando que puedes usar la terminal...${NC}"
echo "Si ves este mensaje, ¡felicidades! Ya sabes usar la terminal."
esperar

# Verificar Python
echo -e "${BLUE}🐍 Verificando Python...${NC}"
if command -v python3 &> /dev/null; then
    echo "✅ Python está instalado: $(python3 --version)"
else
    echo "❌ Python no encontrado"
    echo "   No te preocupes — puedes continuar sin Python por ahora."
    echo "   Lo necesitarás en el Nivel 3, y te enseñaremos a instalarlo."
fi
esperar

# Verificar Git
echo -e "${BLUE}📝 Verificando Git...${NC}"
if command -v git &> /dev/null; then
    echo "✅ Git está instalado: $(git --version)"
else
    echo "❌ Git no encontrado"
    echo "   No te preocupes — lo necesitarás en el Nivel 4."
    echo "   Para instalarlo ahora: https://git-scm.com/downloads"
fi
esperar

# Verificar VS Code
echo -e "${BLUE}💻 Verificando VS Code...${NC}"
if command -v code &> /dev/null; then
    echo "✅ VS Code está instalado"
else
    echo "❌ VS Code no encontrado"
    echo "   Recomendamos instalarlo para el curso."
    echo "   Descarga: https://code.visualstudio.com/"
    echo ""
    read -p "¿Quieres abrir la página de descarga? (s/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[sS]$ ]]; then
        if [[ "$OSTYPE" == "darwin"* ]]; then
            open "https://code.visualstudio.com/"
        elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
            xdg-open "https://code.visualstudio.com/"
        elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
            start "https://code.visualstudio.com/"
        fi
    fi
fi
esperar

# Verificar cuentas de IA
echo -e "${BLUE}🤖 Verificando cuentas de IA...${NC}"
echo "Para este curso, necesitas al menos UNA cuenta de IA gratuita."
echo ""
echo "Opciones recomendadas (todas gratuitas):"
echo "  1. Claude: https://claude.ai"
echo "  2. ChatGPT: https://chat.openai.com"
echo "  3. Gemini: https://gemini.google.com"
echo ""
read -p "¿Tienes al menos una de estas cuentas? (s/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[sS]$ ]]; then
    echo "✅ Perfecto, tienes la herramienta mínima necesaria"
else
    echo "⚠️  Crea una cuenta antes de continuar."
    echo "   Recomendamos Claude (claude.ai) — es gratuita y fácil de usar."
fi
esperar

# Crear estructura básica de proyecto
echo -e "${BLUE}📁 Creando estructura básica de proyecto...${NC}"
PROJECT_DIR="$HOME/iron-man-evolution"

if [ ! -d "$PROJECT_DIR" ]; then
    mkdir -p "$PROJECT_DIR"
    echo "✅ Directorio creado: $PROJECT_DIR"
else
    echo "✅ Directorio ya existe: $PROJECT_DIR"
fi

cd "$PROJECT_DIR"

# Crear archivos básicos
echo "📝 Creando archivos básicos..."

# README básico
cat > README.md << 'EOF'
# Mi Proyecto Iron Man Evolution

Este es mi proyecto para el curso Iron Man Evolution.

## Objetivo
Aprender a desarrollar software con IA desde cero.

## Estado
- [ ] Completado Prerrequisitos
- [ ] Nivel 1: El Demo en la Cueva
- [ ] Nivel 2: El Mark I
- [ ] Nivel 3: El Mark III
- [ ] Nivel 4: JARVIS Avanzado
- [ ] Nivel 5: Ultron
- [ ] Nivel 6: El Nanotech

## Mi Herramienta de IA
Uso: ________________ (Claude, ChatGPT, Gemini, etc.)

---
*Creado durante Iron Man Evolution*
EOF

# AGENTS.md básico
cat > AGENTS.md << 'EOF'
# Mi Proyecto Iron Man Evolution

## Información Básica
- **Estudiante**: [Tu nombre]
- **Fecha inicio**: 2026
- **Curso**: Iron Man Evolution

## Reglas (para cuando uses IA)
1. Siempre pregunta "¿qué quieres lograr?"
2. Pide ejemplos específicos
3. Guarda lo que funcione
4. Organiza tus archivos

## Mi Primera Interacción
Fecha: ____________
Qué pedí: ____________
Qué obtuve: ____________
¿Qué aprendí?: ____________
EOF

# .gitignore básico
cat > .gitignore << 'EOF'
# Archivos sensibles
.env
*.key
*.pem
secrets/

# Archivos del sistema
.DS_Store
Thumbs.db

# Archivos de IDE
.vscode/
.idea/
*.swp
*.swo

# Archivos de Python
__pycache__/
*.pyc
*.pyo
.venv/
venv/

# Archivos de Node
node_modules/
npm-debug.log

# Logs
*.log
logs/

# Backups
*.backup
*.bak
EOF

echo "✅ Archivos creados: README.md, AGENTS.md, .gitignore"

echo ""
echo -e "${GREEN}🎉 ¡Configuración básica completada!${NC}"
echo ""
echo "Tu espacio de trabajo está listo en: $PROJECT_DIR"
echo ""
echo "Siguiente paso:"
echo "  1. Abre el archivo README.md en tu editor de texto"
echo "  2. Completa tu nombre y herramienta de IA"
echo "  3. Vuelve al curso y comienza el [Nivel 1](contenido/nivel1.qmd)"
echo ""
echo "Recuerda: ¡No necesitas entender todo ahora! El curso te guiará."