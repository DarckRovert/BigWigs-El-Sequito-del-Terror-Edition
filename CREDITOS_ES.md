# BigWigs TurtleWoW - Elnazzareno Edition
## Correcciones para Turtle WoW

## Información del Autor
- **Nombre Real:** DarckRovert
- **Personaje en el Juego:** Elnazzareno
- **Clan:** El Sequito del Terror
- **Fecha:** Enero 2026

## Resumen de Correcciones

Este documento detalla todas las correcciones aplicadas para hacer BigWigs TurtleWoW - Elnazzareno Edition completamente compatible con el contenido personalizado de Turtle WoW, incluyendo zonas personalizadas, jefes y traducciones al español (esES).

### Total de Archivos Corregidos: 20

---

## Categoría 1: Errores de Traducción al Español (3 archivos)

### 1. Plugins/SpellRequests.lua
**Problema:** Hechizos personalizados de Turtle WoW no presentes en la librería Babble-Spell

**Solución:**
- "Hand of Protection" → "Blessing of Protection"
- "Grace of the Sunwell" → "Innervate"
- "Spirit Link" → "Innervate"

### 2. Raids/ZG/Gahzranka.lua
**Problema:** Variables de traducción en español usando convenciones de nombres obsoletas

**Solución:** Corregidos todos los nombres de variables para coincidir con la versión en inglés

### 3. Raids/AQ20/Buru.lua
**Problema:** Traducción en español contenía variables obsoletas

**Solución:** Eliminadas variables obsoletas usando script Python (fix_buru.py)

---

## Categoría 2: Errores de Babble-Boss - UBRS (2 archivos)

### 4. Raids/UBRS/Emberseer.lua
**Problema:** Referencia a NPC no presente en Babble-Boss
**Solución:** Comentada la referencia problemática

### 5. Raids/UBRS/Solakar.lua
**Problema:** Referencias a NPCs no presentes en Babble-Boss
**Solución:** Comentadas las referencias problemáticas

---

## Categoría 3: Errores de Babble-Zone - The Black Morass (7 archivos)

**Problema:** "The Black Morass" es una zona personalizada de Turtle WoW no presente en Babble-Zone

**Archivos Corregidos:**
6. Raids/BlackMorass/Chronar.lua
7. Raids/BlackMorass/TimeLordEpochronos.lua
8. Raids/BlackMorass/Mossheart.lua
9. Raids/BlackMorass/Rotmaw.lua
10. Raids/BlackMorass/DriftingAvatarOfSand.lua
11. Raids/BlackMorass/Epidamu.lua
12. Raids/BlackMorass/Antnormi.lua

**Solución:** Comentado el segundo parámetro (nombre de zona) en ModuleDeclaration

---

## Categoría 4: Errores de Babble-Zone - Emerald Sanctum (7 archivos)

**Problema:** "Emerald Sanctum" es una zona personalizada de Turtle WoW no presente en Babble-Zone

**Archivos Corregidos:**
13. Raids/EmeraldSanctum/Solnius.lua
14. Raids/EmeraldSanctum/SanctumWyrmkin.lua
15. Raids/EmeraldSanctum/SanctumSupressor.lua
16. Raids/EmeraldSanctum/SanctumWyrm.lua
17. Raids/EmeraldSanctum/SanctumDragonkin.lua
18. Raids/EmeraldSanctum/SanctumDreamer.lua
19. Raids/EmeraldSanctum/Erennius.lua

**Solución:** Comentado el segundo parámetro (nombre de zona) en ModuleDeclaration

---

## Categoría 5: Validación del Sistema Core (1 archivo)

### 20. Core.lua
**Problema:** Cuando el nombre de zona se comenta en ModuleDeclaration, zoneName se vuelve nil

**Solución:**
- Añadida validación nil-check en línea 1092
- Añadido valor por defecto "Unknown Zone" en línea 1096

---

## Pruebas y Verificación

### Procedimiento de Prueba:
1. Iniciado World of Warcraft (Turtle WoW)
2. Ejecutado comando `/reload` múltiples veces
3. Monitoreado ventana de chat para errores de Babble

### Resultados:
✓ Sin errores de Babble-Spell
✓ Sin errores de Babble-Boss
✓ Sin errores de Babble-Zone
✓ Sin errores de Core.lua
✓ Todos los addons cargan exitosamente
✓ BigWigs funciona normalmente

---

## Notas Técnicas

### Por qué ocurrieron estos errores:
1. **Errores de Traducción:** Las traducciones al español usaban convenciones de nombres obsoletas
2. **Errores de Babble-Boss:** Turtle WoW tiene NPCs personalizados no presentes en la librería estándar
3. **Errores de Babble-Zone:** Turtle WoW tiene zonas personalizadas no presentes en WoW estándar
4. **Errores de Core:** Las correcciones para Babble-Zone crearon valores nil que no se manejaban correctamente

### Estrategia de Solución:
- Para hechizos personalizados: Reemplazar con hechizos similares existentes
- Para NPCs personalizados: Comentar referencias a Babble-Boss
- Para zonas personalizadas: Comentar parámetro de zona en ModuleDeclaration
- Para manejo de nil: Añadir validaciones en Core.lua

---

## Mantenimiento Futuro

Si Turtle WoW añade más contenido personalizado, pueden necesitarse correcciones similares:

1. **Nuevas Zonas Personalizadas:** Comentar nombre de zona en ModuleDeclaration
2. **Nuevos Jefes Personalizados:** Comentar referencias a Babble-Boss
3. **Nuevos Hechizos Personalizados:** Reemplazar con hechizos similares en Babble-Spell
4. **Actualizaciones de Traducción:** Asegurar que nombres de variables esES coincidan exactamente con enUS

---

## Créditos

**Todas las correcciones implementadas por:**
- **DarckRovert** (Nombre Real)
- **Elnazzsareno** (Personaje en el Juego)
- **El Sequito del Terror** (Clan)

**Fecha:** 8 de Enero de 2026

---

## Contacto

Para preguntas o problemas relacionados con estas correcciones, contacta a Elnazzsareno en el juego en Turtle WoW.

---

*Este registro de cambios es parte del paquete del addon BigWigs para Turtle WoW.*
