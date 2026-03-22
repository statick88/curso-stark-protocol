---
title: "MCP - Model Context Protocol"
author: "Diego Saavedra García"
description: "Protocolo de comunicación para agentes de IA"
---

# 🔌 MCP

## **Model Context Protocol**

---

## 📋 **Descripción**

MCP es un protocolo abierto que estandariza cómo las IAs se conectan a herramientas, APIs y datos. Es como USB para IA: un estándar universal.

## 🏗️ **Arquitectura**

```
┌─────────────────────────────────────────────────────────┐
│                      IA CLIENT                         │
│                    (Claude, GPT, etc.)                  │
└─────────────────────────────────────────────────────────┘
                            │
                            │ MCP Protocol
                            ▼
┌─────────────────────────────────────────────────────────┐
│                    MCP SERVER                          │
│                                                         │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐   │
│  │   Tools     │  │  Resources  │  │   Prompts   │   │
│  │             │  │             │  │             │   │
│  │ - Ejecutar  │  │ - Leer      │  │ - Templates │   │
│  │   código    │  │   archivos  │  │   predefs   │   │
│  │ - Llamar    │  │ - Acceder   │  │ - Sistemas  │   │
│  │   APIs      │  │   BDs       │  │   prompts   │   │
│  └─────────────┘  └─────────────┘  └─────────────┘   │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

## 🔧 **Implementación**

### **Servidor MCP Básico**
```python
from mcp import Server
from mcp.types import Tool, TextContent

server = Server("mi-servidor")

@server.tool("calcular")
async def calcular(expression: str) -> list[TextContent]:
    """Calcula una expresión matemática"""
    try:
        result = eval(expression)  # ¡Cuidado con seguridad!
        return [TextContent(text=f"Resultado: {result}")]
    except Exception as e:
        return [TextContent(text=f"Error: {str(e)}")]

if __name__ == "__main__":
    server.run()
```

### **Cliente MCP**
```python
from mcp import Client

async def main():
    async with Client("http://localhost:8000") as client:
        # Listar herramientas disponibles
        tools = await client.list_tools()
        
        # Ejecutar una herramienta
        result = await client.call_tool("calcular", {"expression": "2 + 2"})
        print(result)
```

## 🔒 **Seguridad**

| Riesgo | Mitigación |
|--------|------------|
| **Ejecución de código** | Sandbox + whitelist |
| **Acceso a archivos** | Permisos granulares + chroot |
| **Inyección de prompts** | Validación estricta de inputs |
| **Exfiltración de datos** | Logging + rate limiting |

## 🔗 **Recursos**

- [Especificación MCP](https://spec.modelcontextprotocol.io/)
- [Lista de Servidores MCP](https://github.com/modelcontextprotocol/servers)
- [Tutorial Completo](https://modelcontextprotocol.io/docs/tutorials)
