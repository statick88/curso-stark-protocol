---
title: "Boss Fight 1: Escape de la Cueva"
author: "Diego Saavedra García"
description: "Reto final Nivel 1: Crear tu primer sistema funcional desde cero"
---

# 🎯 Boss Fight 1: Escape de la Cueva

## **Prueba Final del Nivel 1**

---

## 🎬 **La Situación**

> *"Tengo que salir de aquí. No importa cómo."* — Tony Stark

Tony Stark está en la cueva. Herido, sin recursos, con el shrapnel cerca de su corazón. Tiene **30 minutos** antes de que los terroristas regresen. Debe construir algo que le permita **escapar**.

**Tu misión**: Demostrar que has aprendido lo básico del Nivel 1. Debes crear un sistema funcional **desde cero**.

---

## 🎯 **Misión: Sistema de Diagnóstico Médico**

Tony necesita un sistema que:
1. **Monitoree** su estado vital (simulado)
2. **Diagnostique** problemas basándose en síntomas
3. **Recomiende** acciones inmediatas
4. **Registre** todo en logs para J.A.R.V.I.S.

### **Requisitos Técnicos**

```python
# Estructura mínima requerida
class DiagnosticoMedico:
    def __init__(self):
        # Inicializar sistema
        pass
    
    def monitorear_vitales(self) -> dict:
        """Simula monitoreo de signos vitales"""
        pass
    
    def diagnosticar(self, sintomas: list) -> dict:
        """Diagnostica basado en síntomas"""
        pass
    
    def recomendar(self, diagnostico: dict) -> list:
        """Recomienda acciones"""
        pass
    
    def registrar(self, evento: str):
        """Registra evento en log"""
        pass

# Funcionalidades mínimas:
# 1. Leer datos del "paciente" (Tony)
# 2. Analizar 5 signos vitales diferentes
# 3. Diagnosticar 3 condiciones posibles
# 4. Recomendar acciones específicas
# 5. Guardar log detallado
```

### **Constraints del Tiempo**

| Restricción | Valor |
|-------------|-------|
| **Tiempo máximo** | 30 minutos |
| **Líneas de código** | Máximo 150 |
| **Complejidad** | Básica (como Mark I) |
| **Calidad** | Debe funcionar |

### **Evaluación**

| Criteria | Puntos | Completado |
|----------|--------|------------|
| **Funcionalidad** | 40 pts | ⬜ |
| **Código limpio** | 20 pts | ⬜ |
| **Logs funcionales** | 20 pts | ⬜ |
| **Documentación** | 20 pts | ⬜ |
| **TOTAL** | **100 pts** | |

---

## 🚀 **Ejecución**

### **Paso 1: Preparación (2 min)**
```bash
# Crear entorno
mkdir -p ~/boss-fight-1/{src,logs}
cd ~/boss-fight-1
```

### **Paso 2: Desarrollo (25 min)**
1. **Minuto 0-5**: Planificar estructura
2. **Minuto 5-15**: Implementar funciones core
3. **Minuto 15-25**: Probar y ajustar
4. **Minuto 25-30**: Documentar

### **Paso 3: Prueba (3 min)**
```bash
# Ejecutar sistema
python src/diagnostico.py

# Verificar logs
cat logs/tony-stark.log
```

---

## 🏆 **Logro Desbloqueado: "Cave Survivor"**

### **Requisitos para Desbloquear**
- [ ] Sistema ejecutándose sin errores
- [ ] Mínimo 5 logs generados
- [ ] Código documentado
- [ ] Tiempo bajo 30 minutos

### **Recompensa**
- **+150 XP**
- **Logro "Cave Survivor"**
- **Acceso a Nivel 2**

### **Siguiente Nivel**
> *"Ahora viene la parte divertida."* — Tony Stark

**[→ Nivel 2: El Mark I](../contenido/nivel2.qmd)**

---

## 📊 **Post-Battle Analysis**

### **Tu Desempeño**
```markdown
## Análisis Post-Combate
- **Tiempo total**: ___ minutos
- **Líneas de código**: ___
- **Funciones creadas**: ___
- **Logs generados**: ___

## Lecciones Aprendidas
1. [Lo que salió bien]
2. [Lo que mejoraría]
3. [Lo que aprendí]
```
