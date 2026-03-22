---
title: "Boss Fight 3: La Torre Stark"
author: "Diego Saavedra García"
description: "Reto final Nivel 3: Construir arquitectura limpia y mantenible"
---

# 🏗️ Boss Fight 3: La Torre Stark

## **Prueba Final del Nivel 3**

---

## 🎬 **La Situación**

> *"La Torre Stark. Nuevo centro de operaciones. Todo lo que necesito, todo en un lugar."* — Tony Stark

Tony construye la Torre Stark. No es solo un edificio, es un **ecosistema**. Cada piso tiene un propósito, cada sistema se comunica, todo está diseñado para **eficiencia máxima**.

**Tu misión**: Crear una arquitectura que sea como la Torre Stark: organizada, eficiente, mantenible.

---

## 🎯 **Misión: Sistema de Gestión de Proyectos "Stark Industries"**

### **Requisitos de Arquitectura**

```
stark-projects/
├── src/
│   ├── domain/          # Lógica de negocio
│   │   ├── entities/    # Entidades del dominio
│   │   ├── services/    # Servicios de dominio
│   │   └── interfaces/  # Interfaces/ports
│   ├── application/     # Casos de uso
│   │   ├── use_cases/   # Lógica de aplicación
│   │   └── dto/         # Data Transfer Objects
│   ├── infrastructure/  # Implementación
│   │   ├── repositories/ # Repositorios concretos
│   │   ├── api/         # Controladores API
│   │   └── persistence/ # Base de datos
│   └── shared/          # Código compartido
├── tests/
│   ├── unit/            # Tests unitarios
│   ├── integration/     # Tests de integración
│   └── e2e/             # Tests end-to-end
├── docs/                # Documentación
└── scripts/             # Scripts de utilidad
```

### **Entidades del Dominio**

```python
# domain/entities/project.py
from dataclasses import dataclass
from datetime import datetime
from typing import Optional

@dataclass
class Project:
    """Entidad Project del dominio"""
    id: str
    name: str
    description: str
    status: str  # "active", "completed", "archived"
    created_at: datetime
    updated_at: Optional[datetime] = None
    
    def activate(self):
        """Activa el proyecto"""
        self.status = "active"
        self.updated_at = datetime.now()
    
    def complete(self):
        """Marca proyecto como completado"""
        self.status = "completed"
        self.updated_at = datetime.now()
```

### **Casos de Uso**

```python
# application/use_cases/create_project.py
from dataclasses import dataclass
from src.domain.entities.project import Project
from src.domain.interfaces.project_repository import ProjectRepository

@dataclass
class CreateProjectRequest:
    """DTO para crear proyecto"""
    name: str
    description: str

@dataclass  
class CreateProjectResponse:
    """DTO de respuesta"""
    project_id: str
    name: str
    status: str

class CreateProjectUseCase:
    """Caso de uso: Crear proyecto"""
    
    def __init__(self, repository: ProjectRepository):
        self.repository = repository
    
    def execute(self, request: CreateProjectRequest) -> CreateProjectResponse:
        """Ejecuta el caso de uso"""
        # Validar datos
        if not request.name.strip():
            raise ValueError("Nombre no puede estar vacío")
        
        # Crear entidad
        project = Project(
            id=self.repository.generate_id(),
            name=request.name,
            description=request.description,
            status="active",
            created_at=datetime.now()
        )
        
        # Persistir
        self.repository.save(project)
        
        # Retornar respuesta
        return CreateProjectResponse(
            project_id=project.id,
            name=project.name,
            status=project.status
        )
```

---

## 🚀 **Evaluación**

### **Métricas de Calidad**

| Métrica | Objetivo | Tu Resultado |
|---------|----------|--------------|
| **Acoplamiento** | Bajo (dependencias invertidas) | ⬜ |
| **Cohesión** | Alta (cada clase hace una cosa) | ⬜ |
| **Testeabilidad** | Alta (fácil de testear) | ⬜ |
| **Mantenibilidad** | Alta (cambios fáciles) | ⬜ |

### **Checklist de Arquitectura**
- [ ] Separación clara por capas
- [ ] Dependencias invertidas (domain no depende de infra)
- [ ] Tests en cada capa
- [ ] Documentación de arquitectura
- [ ] Ejemplos de uso

---

## 🏆 **Logro Desbloqueado: "Architect"**

### **Requisitos**
- [ ] Arquitectura limpia implementada
- [ ] Tests en cada capa
- [ ] Documentación de arquitectura
- [ ] Código mantenible

### **Recompensa**
- **+250 XP**
- **Logro "Architect"**
- **Acceso a Nivel 4**

### **Siguiente Nivel**
> *"J.A.R.V.I.S., ¿puedes ayudarme con esto?"* — Tony Stark

**[→ Nivel 4: J.A.R.V.I.S. Avanzado](../contenido/nivel4.qmd)**
