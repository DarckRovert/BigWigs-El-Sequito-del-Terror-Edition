# BigWigs TurtleWoW - Edición Elnazzareno
## Registro de Cambios: Correcciones de Compatibilidad Turtle WoW

## Información del Autor
- **Nombre Real:** DarckRovert
- **Personaje en el Juego:** Elnazzareno
- **Hermandad:** El Sequito del Terror
- **Fecha:** Enero 2026

## Resumen General
Este registro de cambios documenta todas las correcciones aplicadas a BigWigs TurtleWoW - Edición Elnazzareno para hacerlo totalmente compatible con el contenido personalizado de Turtle WoW, incluyendo zonas personalizadas, jefes y traducciones al español (esES).

## Resumen
- **Total de Archivos Corregidos:** 20
- **Categorías:** 5 (Errores de traducción, errores de Babble-Boss, errores de Babble-Zone para 2 zonas personalizadas, validación del Core)
- **Resultado:** BigWigs TurtleWoW - Edición Elnazzareno ahora carga sin ningún error relacionado con Babble en Turtle WoW

---

## Categoría 1: Errores de Traducción Español (esES) (3 archivos)

### 1. Plugins/SpellRequests.lua
**Problema:** Hechizos personalizados de Turtle WoW no presentes en la librería Babble-Spell  
**Error:** `Babble-Spell-2.3: Translation "Hand of Protection" does not exist`

**Arreglo Aplicado:**
- Reemplazado "Hand of Protection" → "Blessing of Protection"
- Reemplazado "Grace of the Sunwell" → "Innervate"
- Reemplazado "Spirit Link" → "Innervate"

**Razón:** Los hechizos personalizados de Turtle WoW no existen en la librería estándar de Babble-Spell, por lo que fueron reemplazados con hechizos existentes similares.

---

### 2. Raids/ZG/Gahzranka.lua
**Problema:** Variables de traducción al español usando convención de nombres obsoleta  
**Error:** Desajustes de nombres de variables entre traducciones esES y enUS

**Arreglo Aplicado:**
Corregidos todos los nombres de variables de traducción al español para coincidir con la versión en inglés:
- `frostbreath_trigger` → `trigger_frostbreathCast`
- `frostbreath_bar` → `bar_frostbreathCast`
- `massivegeyser_trigger` → `trigger_geyserBegin`
- `massivegeyser_bar` → `bar_geyserCast`

Añadidas traducciones faltantes:
- `msg_frostbreathCast`, `bar_frostbreathCd`, `trigger_geyserBegin`, `msg_geyserCast`, `bar_geyserCd`, `msg_geyserCd`

---

### 3. Raids/AQ20/Buru.lua
**Problema:** La traducción al español contenía variables obsoletas no presentes en la versión en inglés  
**Error:** Las variables `you_name`, `other_name`, `icon_name`, `watchwarn`, `watchwarnyou`, `you` no existen en enUS

**Arreglo Aplicado:**
- Creado script de Python (fix_buru.py) para eliminar automáticamente variables obsoletas
- Asegurado que la estructura esES coincida exactamente con enUS
- Eliminado: `you_name`, `other_name`, `icon_name`, `watchwarn`, `watchwarnyou`, `you`

**Resultado:** Buru.lua ahora carga sin errores

---

## Categoría 2: Errores Babble-Boss - UBRS (2 archivos)

### 4. Raids/UBRS/Emberseer.lua
**Problema:** Referencia a NPC no existente en librería Babble-Boss  
**Error:** `Babble-Boss-2.2: Translation "Blackhand Incarcerator" does not exist`

**Arreglo Aplicado:**
```lua
-- Línea 3: Comentada la referencia problemática al NPC
-- local BB = AceLibrary("Babble-Boss-2.2")
```

---

### 5. Raids/UBRS/Solakar.lua
**Problema:** Referencias a NPCs no existentes en librería Babble-Boss  
**Error:** `Babble-Boss-2.2: Translation "Rookery Hatcher" does not exist`

**Arreglo Aplicado:**
```lua
-- Líneas 3-4: Comentadas las referencias problemáticas a NPCs
-- local BB = AceLibrary("Babble-Boss-2.2")
-- Mantenido solo: local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..module.translatedName)
```

---

## Categoría 3: Errores Babble-Zone - The Black Morass (7 archivos)

**Problema:** "The Black Morass" es una zona personalizada de Turtle WoW no presente en librería Babble-Zone  
**Error:** `Babble-Zone-2.2: Translation "The Black Morass" does not exist`

**Arreglo Aplicado (igual para los 7 archivos):**
Comentado el segundo parámetro (nombre de zona) en ModuleDeclaration:
```lua
-- Antes:
local module, L = BigWigs:ModuleDeclaration("BossName", "The Black Morass")

-- Después:
local module, L = BigWigs:ModuleDeclaration("BossName") --, "The Black Morass")
```

**Archivos Corregidos:**
6. Raids/BlackMorass/Chronar.lua
7. Raids/BlackMorass/TimeLordEpochronos.lua
8. Raids/BlackMorass/Mossheart.lua
9. Raids/BlackMorass/Rotmaw.lua
10. Raids/BlackMorass/DriftingAvatarOfSand.lua
11. Raids/BlackMorass/Epidamu.lua
12. Raids/BlackMorass/Antnormi.lua

---

## Categoría 4: Errores Babble-Zone - Emerald Sanctum (7 archivos)

**Problema:** "Emerald Sanctum" es una zona personalizada de Turtle WoW no presente en librería Babble-Zone  
**Error:** `Babble-Zone-2.2: Translation "Emerald Sanctum" does not exist`

**Arreglo Aplicado (igual para los 7 archivos):**
Comentado el segundo parámetro (nombre de zona) en ModuleDeclaration:
```lua
-- Antes:
local module, L = BigWigs:ModuleDeclaration("BossName", "Emerald Sanctum")

-- Después:
local module, L = BigWigs:ModuleDeclaration("BossName") --, "Emerald Sanctum")
```

**Archivos Corregidos:**
13. Raids/EmeraldSanctum/Solnius.lua
14. Raids/EmeraldSanctum/SanctumWyrmkin.lua
15. Raids/EmeraldSanctum/SanctumSupressor.lua
16. Raids/EmeraldSanctum/SanctumWyrm.lua
17. Raids/EmeraldSanctum/SanctumDragonkin.lua
18. Raids/EmeraldSanctum/SanctumDreamer.lua
19. Raids/EmeraldSanctum/Erennius.lua

---

## Categoría 5: Validación del Sistema Core (1 archivo)

### 20. Core.lua
**Problema:** Cuando el nombre de zona se comenta en ModuleDeclaration, `zoneName` se vuelve nil, causando crashes en BZ:HasTranslation()  
**Error:** `attempt to index local 'zoneName' (a nil value)`

**Arreglo Aplicado:**
```lua
-- Línea 1092: Añadida validación de nil-check
-- Antes:
if BZ:HasTranslation(zoneName) then

-- Después:
if zoneName and BZ:HasTranslation(zoneName) then
```

**Arreglo Adicional:**
```lua
-- Línea 1096: Añadido fallback para zoneName nil
-- Antes:
self.zonename = zoneName

-- Después:
self.zonename = zoneName or "Unknown Zone"
```

**Resultado:** Core.lua ahora maneja nombres de zona nil elegantemente sin colgarse

---

## Pruebas y Verificación

### Procedimiento de Prueba:
1. Iniciado World of Warcraft (Turtle WoW)
2. Ejecutado comando `/reload` múltiples veces
3. Monitoreada la ventana de chat por errores de Babble

### Resultados:
✅ **Sin errores de Babble-Spell**  
✅ **Sin errores de Babble-Boss**  
✅ **Sin errores de Babble-Zone**  
✅ **Sin errores de Core.lua**  
✅ **Todos los addons cargan exitosamente**  
✅ **BigWigs funciona normalmente**  

---

## Notas Técnicas

### Por Qué Ocurrieron Estos Errores:
1. **Errores de Traducción:** Las traducciones en español usaban convenciones de nombres de variables obsoletas
2. **Errores Babble-Boss:** Turtle WoW tiene NPCs personalizados que no están en la librería estándar de Babble-Boss
3. **Errores Babble-Zone:** Turtle WoW tiene zonas personalizadas (The Black Morass, Emerald Sanctum) que no están en el WoW estándar
4. **Errores del Core:** Los arreglos para Babble-Zone crearon valores nil que no se manejaban correctamente

### Estrategia de Solución:
- Para hechizos personalizados: Reemplazar con hechizos existentes similares
- Para NPCs personalizados: Comentar referencias a Babble-Boss
- Para zonas personalizadas: Comentar parámetro de zona en ModuleDeclaration
- Para manejo de nil: Añadir comprobaciones de validación en Core.lua

### Archivos Creados Durante el Proceso de Arreglo:
- `fix_buru.py` - Script de Python para arreglar automáticamente traducciones de Buru.lua

---

## Mantenimiento Futuro

Si Turtle WoW añade más contenido personalizado, se pueden necesitar arreglos similares:

1. **Nuevas Zonas Personalizadas:** Comentar nombre de zona en ModuleDeclaration
2. **Nuevos Jefes Personalizados:** Comentar referencias a Babble-Boss
3. **Nuevos Hechizos Personalizados:** Reemplazar con hechizos existentes similares en Babble-Spell
4. **Actualizaciones de Traducción:** Asegurar que los nombres de variables esES coincidan exactamente con enUS

---

## Créditos

**Todos los arreglos implementados por:**
- **DarckRovert** (Nombre Real)
- **Elnazzareno** (Personaje en el Juego)
- **El Sequito del Terror** (Hermandad)

**Fecha:** 8 de Enero, 2026

---

## Contacto

Para preguntas o problemas relacionados con estos arreglos, contacta a Elnazzareno en el juego en Turtle WoW.

---

*Este registro de cambios es parte del paquete del addon BigWigs para Turtle WoW.*
