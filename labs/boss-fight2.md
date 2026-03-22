---
title: "Boss Fight 2: Mark I vs Mark II"
author: "Diego Saavedra García"
description: "Reto final Nivel 2: Transformar prototipo en producto profesional"
---

# ⚔️ Boss Fight 2: Mark I vs Mark II

## **Prueba Final del Nivel 2**

---

## 🎬 **La Situación**

> *"Necesito algo más que un prototipo. Necesito algo que funcione de verdad."* — Tony Stark

Tony tiene el Mark I, pero no es suficiente. Debe crear el **Mark II**: más fuerte, más resistente, más profesional. La diferencia entre prototipo y producto.

**Tu misión**: Transformar tu código de "funciona" a "profesional".

---

## 🎯 **Misión: Sistema de Gestión de Inventarios Mejorado**

### **Contexto del Problema**

Tu código del Mark I "funciona", pero:
- ❌ No tiene tests
- ❌ No tiene documentación clara
- ❌ No sigue estándares de código
- ❌ No es mantenible

### **Tareas del Mark II**

#### **Tarea 1: AGENTS.md Profesional (30 min)**
```markdown
# AGENTS.md - Stark Industries Inventory v2.0

## Arquitectura
[Descripción de la arquitectura]

## Estándares de Código
- Python 3.10+ con type hints
- Funciones < 20 líneas
- Comentarios solo el "por qué"
- Tests para todo código público

## Convenciones
- Nombres: snake_case
- Tests: test_[función]_[escenario]
- Docs: Google Style

## Flujos de Trabajo
1. Escribir test primero
2. Implementar función
3. Refactorizar
4. Documentar
```

#### **Tarea 2: Tests Completos (40 min)**
```python
# tests/test_inventario.py
import pytest
from src.inventario import Inventario

class TestInventario:
    def test_crear_producto_exitoso(self):
        """Test creación de producto válido"""
        inv = Inventario()
        producto = inv.crear_producto("Mark II", "Armadura", 1)
        assert producto.nombre == "Mark II"
        assert producto.categoria == "Armadura"
    
    def test_crear_producto_datos_invalidos(self):
        """Test creación con datos inválidos"""
        inv = Inventario()
        with pytest.raises(ValueError):
            inv.crear_producto("", "", -1)
    
    # Agregar mínimo 8 tests más
```

#### **Tarea 3: Documentación Profesional (30 min)**
```markdown
# Stark Industries Inventory System v2.0

## Descripción
Sistema de gestión de inventarios para Stark Industries.

## Instalación
```bash
pip install -r requirements.txt
```

## Uso
```python
from src.inventario import Inventario

inv = Inventario()
inv.crear_producto("Mark III", "Armadura", 5)
```

## Testing
```bash
pytest tests/ -v --cov=src
```

## Arquitectura
[Diagrama de arquitectura]
```

---

## 🚀 **Métricas de Éxito**

### **Criterios de Aprobación**

| Métrica | Mark I | Mark II | Mejora |
|---------|--------|---------|--------|
| **Tests** | 0% | >80% | +80% |
| **Docs** | 0% | 100% | +100% |
| **Type Hints** | 0% | 100% | +100% |
| **Coverage** | 0% | >80% | +80% |

### **Checklist de Validación**
- [ ] Todos los tests pasan
- [ ] Coverage > 80%
- [ ] Type hints en todo código público
- [ ] Documentación completa
- [ ] AGENTS.md actualizado
- [ ] README con ejemplos

---

## 🏆 **Logro Desbloqueado: "Prototype to Product"**

### **Requisitos**
- [ ] Tests ejecutándose
- [ ] Coverage > 80%
- [ ] Documentación completa
- [ ] AGENTS.md profesional

### **Recompensa**
- **+200 XP**
- **Logro "Prototype to Product"**
- **Acceso a Nivel 3**

### **Siguiente Nivel**
> *"La verdadera sofisticación está en la simplicidad."* — Tony Stark

**[→ Nivel 3: El Mark III](../contenido/nivel3.qmd)**
