---
title: "Lab 2: El Mark I - Prototipo Funcional"
author: "Diego Saavedra García"
description: "Construir tu primera armadura: Context Engineering y AGENTS.md"
---

# ⚙️ Lab 2: El Mark I - Prototipo Funcional

## **De Scripts Sueltos a Sistema Organizado**

---

## 🎬 **La Situación**

> *"Mark I. No es elegante. No es particularmente limpio. Pero funciona."* — Tony Stark

Tony Stark termina el Mark I. Es desordenado, ruidoso, limitado a 2 minutos de vuelo, y hecho con chatarra. Pero es **su primera armadura funcional**. Con ella, puede derrotar a los terroristas y escapar.

**El Mark I tiene reglas claras:**
- **Límite de energía**: 2 minutos de vuelo
- **Armamento**: Lanzallamas (básico pero efectivo)
- **Debilidad**: Muy vulnerable a ataques
- **Fuerza**: Mayor que la humana

**En este lab, pasarás de scripts sueltos a un "Mark I" de desarrollo:** un sistema con reglas básicas (AGENTS.md) y contexto específico. No será perfecto, pero será tu primera **arquitectura de desarrollo con IA**.

---

## ⏱️ **Timeline de la Misión**

| Paso | Descripción | Tiempo | Completado |
|------|-------------|--------|------------|
| 1 | Diseñar tu AGENTS.md (manual de procedimientos) | 20 min | ⬜ |
| 2 | Crear estructura de proyecto | 15 min | ⬜ |
| 3 | Implementar "Context Before Prompt" | 15 min | ⬜ |
| 4 | Ejecutar tu primer request con contexto completo | 15 min | ⬜ |
| **Total** | | **65 min** | |

---

## 🎯 **Objetivo del Lab**

Crear tu primera arquitectura de desarrollo con IA. Al finalizar, tendrás:

1. ✅ Un archivo AGENTS.md con reglas básicas
2. ✅ Una estructura de proyecto para IA
3. ✅ Implementado el patrón "Context Before Prompt"
4. ✅ Ejecutado tu primer request con contexto completo

---

## ⚠️ **Regla del Stark Protocol**

> **"No es elegante. No es particularmente limpio. Pero funciona."** — Tony Stark

**REGLA ORO**: Los ejercicios te hacen completar, no copiar. Esto te obliga a pensar.

---

## 1. **Prerrequisitos del Mark I**

### 1.1. **Qué Debes Tener Listo**

- ✅ Completado [Lab 1: El Demo en la Cueva](lab-nivel1.md)
- ✅ Herramienta de IA configurada
- ✅ Sistema de organización creado
- ✅ Contexto default definido

### 1.2. **Herramientas Necesarias**

| Herramienta | Propósito | Estado |
|-------------|-----------|--------|
| **Tu IA elegida** | Repartidor de energía | ⬜ |
| **Editor de código** | Taller de armadura | ⬜ |
| **Terminal** | Panel de control | ⬜ |
| **Tu AGENTS.md** | Manual de procedimientos | ⬜ |

---

## 2. **Escenario de la Misión**

Eres Tony Stark, y acaba de terminar el Mark I. Tienes:

1. **Un sistema básico** (scripts sueltos del Lab 1)
2. **Una herramienta de IA** (tu repartidor de energía)
3. **Una misión**: Crear una arquitectura que funcione

**Tu Mark I tendrá:**
- **Reglas claras** (AGENTS.md como manual de procedimientos)
- **Estructura básica** (carpetas organizadas)
- **Contexto persistente** (no solo prompts sueltos)

---

## 3. **Pasos de la Misión**

### **Paso 1: Diseña tu AGENTS.md (Manual de Procedimientos)**

**Objetivo**: Crear el "manual de taller" que J.A.R.V.I.S. usaría para entender cómo trabajas.

**Tu AGENTS.md debe incluir**:

```markdown
# AGENTS.md - [Tu Nombre] Stark Industries
# Versión: 1.0 Mark I
# Autor: [Tu nombre]
# Stack: [Tecnologías principales]

## 🎯 Misión Principal
[Describe brevemente qué haces y cómo trabajas]

## 🏗️ Estructura del Proyecto
- src/: Código fuente
- tests/: Tests unitarios  
- docs/: Documentación
- context/: Archivos de contexto
- logs/: Registro de actividad

## 📏 Reglas de Conducta
1. **Lenguaje principal**: [Tu lenguaje preferido]
2. **Estilo de código**: [Tu convención de naming]
3. **Idioma de respuestas**: [Español/Inglés]
4. **Nivel de detalle**: [Básico/Intermedio/Avanzado]

## 🔧 Convenciones de Código
- Funciones: [snake_case/camelCase]
- Clases: [PascalCase]
- Constantes: [UPPER_SNAKE_CASE]
- Comentarios: [español/explicativos]

## ⚠️ Restricciones Críticas
- No usar dependencias sin justificación
- Siempre incluir tests
- Documentar funciones públicas
- Seguir principios SOLID básicos

## 📚 Contexto Siempre Incluir
1. [Tu nivel de experiencia]
2. [Tus preferencias de desarrollo]
3. [Tus restricciones conocidas]

## 🚫 Lo que NO hacer
- [Lista de acciones prohibidas]
- [Patrones a evitar]
- [Errores comunes a prevenir]
```

**Tu trabajo**: Copia este template y personalízalo para tu situación.

---

### **Paso 2: Crea tu Estructura de Proyecto "Mark I"**

**Objetivo**: Organizar tu espacio de trabajo como Tony organizaría su taller.

**Estructura base**:

```bash
# Crea tu proyecto Mark I
mkdir -p ~/mark-i-project/{src,tests,docs,context,logs,prompts}
cd ~/mark-i-project

# Crea los archivos base
touch AGENTS.md README.md .gitignore
touch src/__init__.py tests/__init__.py
```

**Resultado esperado**:

```
mark-i-project/
├── AGENTS.md          # Tu manual de procedimientos
├── README.md          # Documentación del proyecto
├── .gitignore         # Archivos a ignorar
├── src/               # Código fuente
│   └── __init__.py
├── tests/             # Tests unitarios
│   └── __init__.py
├── docs/              # Documentación adicional
├── context/           # Archivos de contexto
├── logs/              # Registro de actividad
└── prompts/           # Mejores prompts guardados
```

**Tu trabajo**: Crea esta estructura y personalízala.

---

### **Paso 3: Implementa "Context Before Prompt"**

**Objetivo**: Probar que dar contexto ANTES de hacer prompts mejora los resultados.

**Ejercicio comparativo**:

#### **Versión A: SIN Contexto (Mark I defectuoso)**
```markdown
Escríbeme una función que procese pagos
```

#### **Versión B: CON Contexto (Mark I funcional)**
```markdown
Actúa como desarrollador senior de Python siguiendo estas reglas:

[PEGAR CONTENIDO DE AGENTS.md AQUÍ]

## Tarea Específica
Necesito una función `process_payment(payment_data: dict) -> PaymentResult` 
para un sistema de e-commerce.

### Restricciones Técnicas
- Moneda: USD
- Validar: card number (Luhn algorithm), expiry date, CVV
- Retornar: status, transaction_id, timestamp, amount
- Formato: JSON con type hints
- Manejo de errores: CardInvalidError, ExpiredCardError, NetworkError

### Casos Edge
- Tarjetas con espacios o guiones
- Fechas de expiración pasadas
- CVVs de 3 o 4 dígitos
- Montos negativos o cero
- Timeout en conexión (30 segundos)

### Tests Requeridos
- pytest con fixtures
- Mínimo 80% coverage
- Test de integración con mock de pasarela de pago
```

**Tu trabajo**: Ejecuta AMBAS versiones y compara los resultados.

---

### **Paso 4: El Ejercicio Final - Tu Primer "Mark I" Completo**

**Misión**: Crear un sistema funcional simple usando tu nueva arquitectura.

**Especificación**:

> Crea un sistema de "Inventario de Stark Industries" que:
> 1. Use tu AGENTS.md como contexto
> 2. Tenga estructura de proyecto organizada
> 3. Incluya tests básicos
> 4. Documente correctamente

**Requisitos técnicos**:
- Python 3.10+
- Type hints en todas las funciones
- Tests con pytest
- Documentación en README.md
- Uso de tu AGENTS.md como contexto

**Tu prompt inicial** (con contexto):

```markdown
Actúa como desarrollador senior de Python siguiendo estas reglas:

[CONTENIDO COMPLETO DE TU AGENTS.md]

## Misión: Sistema de Inventario Stark Industries

Necesito un sistema básico de inventario que gestione:

### Entidades
- **Producto**: id, name, category, quantity, price, last_updated
- **Categoría**: id, name, description
- **Movimiento**: id, product_id, type (IN/OUT), quantity, timestamp, reason

### Operaciones CRUD
1. Crear/leer/actualizar/eliminar productos
2. Gestionar categorías
3. Registrar movimientos de inventario
4. Consultar stock por categoría
5. Reporte de movimientos por rango de fechas

### Restricciones
- Almacenamiento: JSON files (simplicidad del Mark I)
- Validaciones: Cantidades no negativas, precios positivos
- Logging: Todos los movimientos a logs/inventario.log
- Tests: Mínimo 5 tests básicos

### Resultado Esperado
1. Estructura de proyecto completa
2. Código funcionante con type hints
3. Tests ejecutables
4. README con instrucciones
5. AGENTS.md actualizado con learnings
```

---

## 4. **Reflexión del Piloto**

> *"Cada conversación revela algo nuevo que faltaba."* — J.A.R.V.I.S.

### **Análisis Post-Misión**

**Pregunta 1: Comparación de Resultados**
> ¿Qué diferencia notable hay entre el código generado con contexto vs sin contexto?

```markdown
## Comparación Mark I

**SIN contexto (versión defectuosa)**: 
_______________________________________________

**CON contexto (versión funcional)**: 
_______________________________________________

**Mejora específica**: 
_______________________________________________
```

**Pregunta 2: Poder del AGENTS.md**
> ¿Cómo cambió tu AGENTS.md los resultados de la IA?

```markdown
## Impacto del Manual de Procedimientos

**Antes de AGENTS.md**: 
_______________________________________________

**Después de AGENTS.md**: 
_______________________________________________

**Lección aprendida**: 
_______________________________________________
```

**Pregunta 3: Eficiencia del Sistema**
> ¿Cuánto tiempo ahorraste usando "Context Before Prompt" vs prompts sueltos?

```markdown
## Análisis de Eficiencia

**Tiempo sin sistema**: [X] minutos
**Tiempo con sistema**: [Y] minutos  
**Ahorro**: [Z] minutos ([W]% más eficiente)

**Principal ganancia**: 
_______________________________________________
```

---

## 5. **Verificación de la Misión**

### **Checklist del Mark I**

**Antes de avanzar, verifica que tienes**:

- [ ] ✅ AGENTS.md creado y personalizado
- [ ] ✅ Estructura de proyecto "Mark I" creada
- [ ] ✅ Al menos un ejercicio "Context Before Prompt" ejecutado
- [ ] ✅ Sistema de inventario (o equivalente) funcionando
- [ ] ✅ Tests básicos pasando
- [ ] ✅ Reflexiones completadas

### **Prueba de Fuego**

```bash
# Verifica tu Mark I
cd ~/mark-i-project

# Estructura correcta
ls -la
# Deberías ver: AGENTS.md, README.md, src/, tests/, etc.

# Tests funcionando
python -m pytest tests/ -v
# Deberías ver: tests passed

# Código ejecutable
python src/inventario.py --help
# Deberías ver: ayuda del sistema
```

---

## 6. **Entregable: Tu Mark I Funcional**

### **Archivos a Entregar**

1. **`mark-i-project/`** (carpeta completa con tu sistema)
2. **`analisis-mark-i.md`** (reflexiones y aprendizajes)

### **Estructura de `analisis-mark-i.md`**:

```markdown
# Análisis Mark I - Sistema Funcional
# Piloto: [Tu nombre]
# Fecha: [Fecha actual]

## 1. Comparación de Resultados

### Sin Contexto (Mark I Defectuoso)
[Resultado obtenido]

### Con Contexto (Mark I Funcional)  
[Resultado obtenido]

### Mejoras Específicas
1. [Mejora 1]
2. [Mejora 2]
3. [Mejora 3]

## 2. Impacto del AGENTS.md

### Antes
[Qué pasaba sin AGENTS.md]

### Después
[Qué pasa con AGENTS.md]

### Lecciones Aprendidas
[Lo que descubriste]

## 3. Eficiencia del Sistema

### Métricas
- Tiempo sin sistema: [X] min
- Tiempo con sistema: [Y] min
- Mejora: [Z]%

### Principal Ganancia
[Lo más valioso que ganaste]

## 4. Mejoras para el Mark II

### Para la Próxima
1. [Mejora 1]
2. [Mejora 2]
3. [Mejora 3]

## 5. Código Destacado

[Pegar aquí tu mejor función o clase del sistema]
```

---

## 7. **Logro Desbloqueado: "Primera Armadura Funcional"**

### **Recompensa por Completar este Lab**
- **+200 XP** por crear tu primera arquitectura funcional
- **Logro "Mark I"** — Primer sistema con reglas claras
- **Acceso** a [Nivel 3: El Mark III](../contenido/nivel3.qmd)

### **Siguiente Paso**
> *"Ahora viene la parte divertida."* — Tony Stark

Con tu Mark I funcionando, es hora de crear algo más sofisticado: **[Nivel 3: El Mark III →](../contenido/nivel3.qmd)**

---

## 8. **Recursos de la Misión**

### **Documentación Técnica**
- [AGENTS.md Template](../contenido/nivel2.qmd#22-agentsmd-tu-manual-de-procedimientos)
- [Context Engineering vs Prompt Engineering](../contenido/nivel2.qmd#21-context-engineering-vs-prompt-engineering)
- [Patrón "Context Before Prompt"](../contenido/nivel2.qmd#23-el-patrón-context-before-prompt)

### **Herramientas**
- [pytest Documentation](https://docs.pytest.org/)
- [Python Type Hints](https://docs.python.org/3/library/typing.html)
- [Git Basics](https://git-scm.com/book/es/v2)
