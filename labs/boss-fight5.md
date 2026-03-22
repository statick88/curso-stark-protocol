---
title: "Boss Fight 5: El Escudo de Capitán América"
author: "Diego Saavedra García"
description: "Reto final Nivel 5: Implementar seguridad Zero Trust completa"
---

# 🛡️ Boss Fight 5: El Escudo de Capitán América

## **Prueba Final del Nivel 5**

---

## 🎬 **La Situación**

> *"El escudo es indestructible. Pero el portador no lo es."* — Steve Rogers

El escudo de Capitán América es perfecto. Pero la verdadera protección viene de **múltiples capas**. No confías solo en el escudo. Confías en el escudo + la armadura + el entrenamiento + la estrategia.

**Tu misión**: Implementar defensa en profundidad como el escudo de Capitán América: múltiples capas que se refuerzan mutuamente.

---

## 🎯 **Misión: API con Zero Trust Completo**

### **Arquitectura de Seguridad**

```
┌─────────────────────────────────────────────────────┐
│                  WAF (Firewall)                      │
├─────────────────────────────────────────────────────┤
│                  Rate Limiting                       │
├─────────────────────────────────────────────────────┤
│                  Authentication                      │
├─────────────────────────────────────────────────────┤
│                  Authorization                       │
├─────────────────────────────────────────────────────┤
│                  Input Validation                    │
├─────────────────────────────────────────────────────┤
│                  Business Logic                      │
├─────────────────────────────────────────────────────┤
│                  Data Encryption                     │
└─────────────────────────────────────────────────────┘
```

### **Implementación Requerida**

#### **1. Autenticación JWT Segura**
```python
class JWTAuth:
    """Autenticación JWT con Zero Trust"""
    
    def create_token(self, user: User) -> str:
        """Crea token con claims mínimos necesarios"""
        payload = {
            "sub": user.id,
            "exp": datetime.utcnow() + timedelta(minutes=15),  # Corto
            "jti": str(uuid.uuid4()),  # Token ID único
            "iss": "stark-api",  # Emisor
            "aud": "stark-client",  # Audiencia
            "scope": user.permissions  # Permisos mínimos
        }
        return jwt.encode(payload, SECRET_KEY, algorithm="HS256")
    
    def validate_token(self, token: str) -> dict:
        """Valida token con verificación estricta"""
        try:
            payload = jwt.decode(
                token, 
                SECRET_KEY, 
                algorithms=["HS256"],
                issuer="stark-api",
                audience="stark-client"
            )
            # Verificar que token no está revocado
            if self.is_revoked(payload["jti"]):
                raise AuthError("Token revocado")
            return payload
        except jwt.ExpiredSignatureError:
            raise AuthError("Token expirado")
        except jwt.InvalidTokenError:
            raise AuthError("Token inválido")
```

#### **2. Rate Limiting por Usuario**
```python
class RateLimiter:
    """Rate limiting por usuario y endpoint"""
    
    def __init__(self):
        self.limits = {
            "default": {"requests": 100, "window": 60},  # 100/min
            "auth": {"requests": 5, "window": 300},      # 5/5min
            "admin": {"requests": 50, "window": 60},     # 50/min
        }
    
    def check_limit(self, user_id: str, endpoint: str) -> bool:
        """Verifica si request excede límite"""
        limit_type = self.get_limit_type(endpoint)
        current = self.get_request_count(user_id, limit_type)
        return current < self.limits[limit_type]["requests"]
```

#### **3. Input Validation Defensivo**
```python
class InputValidator:
    """Validación defensiva de todas las entradas"""
    
    def validate_user_input(self, data: dict) -> dict:
        """Valida entrada de usuario con whitelist"""
        allowed_fields = {"name", "email", "password"}
        validated = {}
        
        for field, value in data.items():
            if field not in allowed_fields:
                raise ValidationError(f"Campo no permitido: {field}")
            
            # Sanitizar según tipo
            if field == "email":
                validated[field] = self.validate_email(value)
            elif field == "password":
                validated[field] = self.validate_password(value)
            else:
                validated[field] = self.sanitize_string(value)
        
        return validated
    
    def sanitize_string(self, value: str) -> str:
        """Sanitiza string contra XSS e inyección"""
        return html.escape(value.strip())
```

#### **4. Logging de Seguridad**
```python
class SecurityLogger:
    """Logging de eventos de seguridad"""
    
    def log_auth_attempt(self, user_id: str, success: bool, ip: str):
        """Log intento de autenticación"""
        event = {
            "timestamp": datetime.utcnow().isoformat(),
            "event": "auth_attempt",
            "user_id": user_id,
            "success": success,
            "ip": ip,
            "user_agent": request.headers.get("User-Agent")
        }
        self.logger.info(json.dumps(event))
    
    def log_suspicious_activity(self, activity: str, details: dict):
        """Log actividad sospechosa"""
        event = {
            "timestamp": datetime.utcnow().isoformat(),
            "event": "suspicious_activity",
            "activity": activity,
            "details": details,
            "severity": "HIGH"
        }
        self.logger.warning(json.dumps(event))
```

---

## 🚀 **Pruebas de Seguridad**

### **Ataques a Mitigar**

| Ataque | Defensa | Test |
|--------|---------|------|
| **SQL Injection** | Prepared statements + validación | ⬜ |
| **XSS** | Sanitización HTML | ⬜ |
| **CSRF** | Tokens CSRF | ⬜ |
| **Brute Force** | Rate limiting + account lockout | ⬜ |
| **Token Theft** | JWT corto + refresh tokens | ⬜ |

### **Checklist de Validación**
- [ ] Todos los inputs validados
- [ ] Rate limiting activo
- [ ] JWT con expiración corta
- [ ] Logging de seguridad completo
- [ ] Tests de penetración pasando

---

## 🏆 **Logro Desbloqueado: "Security Guardian"**

### **Requisitos**
- [ ] API con Zero Trust implementado
- [ ] Múltiples capas de seguridad
- [ ] Logging de seguridad activo
- [ ] Tests de penetración pasando

### **Recompensa**
- **+350 XP**
- **Logro "Security Guardian"**
- **Acceso a Nivel 6**

### **Siguiente Nivel**
> *"La única forma de ganar es prepararse para todo."* — Nick Fury

**[→ Nivel 6: El Nanotech](../contenido/nivel6.qmd)**
