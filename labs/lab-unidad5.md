---
title: "Lab 5: El Filtro Mental"
author: "Diego Saavedra"
---

# 🎯 Lab 5: El Filtro Mental

## Qué Compartir, Qué Guardar

---

## ⏱️ Timeline de Verificación

| Paso | Descripción | Tiempo | Completado |
|------|-------------|--------|------------|
| 1 | Clasificar información | 20 min | ⬜ |
| 2 | Reformular sin exponer | 20 min | ⬜ |
| 3 | Anonimizar código | 15 min | ⬜ |
| 4 | Reflexión final | 10 min | ⬜ |
| **Total** | | **65 min** | |

---

## 🎯 Objetivo

Clasificar información y reformular requests sin exponer datos sensibles.

---

## ⚠️ Importante: Pensar Antes de Compartir

Este lab te hace pensar qué es safe y qué no lo es.

---

## 1. Sistema de Clasificación

|Clasificación|Type|¿Compartir?|Ejemplo|
|------------|-----|-----------|-------|
|🔴 Crítico|Passwords, API keys, secrets|NUNCA|`password: "secret123"`|
|🟠 Alto|Datos de usuarios reales|NO|Lista de clientes|
|🟡 Medio|Código propietario|Anonimizar|Patrones, estructura|
|🟢 Bajo|Preguntas genéricas|SÍ|"¿Cómo validar emails?"|

---

## 2. Tu Turno: Clasificar

**Instrucciones:** Para cada scenario, clasifica el nivel de riesgo.

### Scenario 1

```
"Soy developer en empresa X. Quiero que me ayudes a crear un script 
que se conecta a mi base de datos PostgreSQL."

¿Qué nivel de riesgo tiene? ___
¿Qué NO debes compartir? ___
¿Cómo reformularías el request? ___
```

---

### Scenario 2

```
"Necesito revisar mi código de autenticación para buscar vulnerabilidades. 
El código tiene la función validate_password que usa un hash propietario."

¿Qué nivel de riesgo tiene? ___
¿Qué SÍ puedes compartir? ___
¿Cómo anonimirías el código? ___
```

---

### Scenario 3

```
"Tengo 50 passwords de servicios externos que necesito validar 
que cumplan con los requisitos de seguridad."

¿Qué nivel de riesgo tiene? ___
¿Qué NO debes compartir? ___
¿Cómo reformularías el request? ___
```

---

### Scenario 4

```
"Estoy construyendo un sistema de login. Dame las mejores prácticas 
para passwords."

¿Qué nivel de riesgo tiene? ___
¿Puedes compartirlo tal cual? ___
```

---

## 3. Ejercicio: Reformular Sin Exponer

**Instrucciones:** Toma cada request sensitive y reformúlalo para obtener help sin exponer datos.

### Request Original 1

```
"Conecta a mi base de datos en aws.amazon.com con el user admin 
y password P@ssw0rd123 y ejecuta SELECT * FROM users"
```

**Reformulación segura:**
```
___
```

---

### Request Original 2

```
"Revisa este código SQL y dime si tiene SQL injection:

SELECT * FROM users WHERE username = '" + input + "' AND password = '" + hash(input) + "'"
```

**Reformulación segura:**
```
___
```

---

### Request Original 3

```
"Mi API key de Stripe es sk_live_abc123. 
Genera un script para probar pagos."
```

**Reformulación segura:**
```
___
```

---

## 4. Ejercicio: Anonimizar Código

**Instrucciones:** Anonimiza cada snippet de código para revisión de patrones.

### Código Original 1

```javascript
const apiKey = 'sk_live_abc123xyz789';
const response = await fetch('https://api.stripe.com/v1/charges', {
  headers: { 'Authorization': `Bearer ${apiKey}` }
});
```

**Versión anonimizada:**
```javascript
const apiKey = '___';
const response = await fetch('___', {
  headers: { 'Authorization': `Bearer ${apiKey}` }
});
```

---

### Código Original 2

```python
def validate_password(password, user_email="diego@stark.com"):
    if password == "IronMan123!":
        return {"user": user_email, "role": "admin"}
```

**Versión anonimizada:**
```python
def validate_password(___):
    if password == "___":
        return {"user": ___, "role": ___}
```

---

## 5. Reflexión Final

```
¿Alguna vez compartiste algo y después te arrepentiste? ___
¿Cómo podrías haber hecho la pregunta diferente? ___
¿Crees que la IA podría usar tu información contra ti? ___

En una escala de 1-10:
- Mi conciencia de seguridad actual: ___
- Mi confianza en la IA actual: ___
```

---

## Verificación

**Checklist:**

- [ ] 4 scenarios clasificados
- [ ] 3 requests reformulados
- [ ] 2 códigos anonimizados
- [ ] Reflexiones completadas

---

## Entregable

**Archivo**: `filtro_mental.md`

Incluir:
- Clasificación de scenarios
- Requests reformulados
- Códigos anonimizados
- Reflexiones

---

## Recursos

- [AI Data Privacy Guide](https://www.anthropic.com/privacy)
- [OWASP Top 10 for LLMs](https://owasp.org/www-project-llmtop10/)
