# ðŸ“ Wiki: Arquitectura 'Diamond Tier' â€” BigWigs [v2.0.0]

Estructura tÃ©cnica de la orquestaciÃ³n de banda mantenida por **DarckRovert**.

## ðŸ—ï¸ JerarquÃ­a del Sistema Boss Mod (Raid Hierarchy)

**BigWigs** utiliza un diseÃ±o modular para minimizar el impacto en el rendimiento:

1.  **Encounter Modules (`Raids/`)**: Scripts especÃ­ficos para cada jefe. Captura eventos `CHAT_MSG_MONSTER_YELL` y `SPELL_CAST_START`.
2.  **Plugin System (`Plugins/`)**: LÃ³gica compartida para renderizar barras (`Bars.lua`), emitir mensajes (`Messages.lua`) y alertas sonoras (`Sound.lua`).
3.  **Core Controller (`Core.lua`)**: El motor de registro de mÃ³dulos y gestiÃ³n de la base de datos AceDB.
4.  **Sync Bridge (`TerrorLink.lua`)**: MÃ³dulo personalizado del SÃ©quito para compartir estados de boss con el resto de la raid.

---

## ðŸ§­ Diagrama de Flujo: DetecciÃ³n de Encuentro v9.4

```mermaid
graph TD
    A[Inicio: Entrada a Raid] --> B[Registro de Zona por Babble-Zone]
    B --> C[ActivaciÃ³n de MÃ³dulos de Estancia]
    C --> D{Â¿Evento de Boss Detectado?}
    D -- SÃ­ --> E[IntercepciÃ³n de Yell/Combat Log]
    E --> F[Carga de Temporizadores CandyBar]
    F --> G[EmisiÃ³n de Alerta Sonora/Visual]
    G --> H[Sync vÃ­a Comm.lua con la Raid]
    H --> I[Registro en WCS_Brain & TerrorMeter]
    D -- No --> J[Monitoreo Pasivo Throttled]
    J --> D
```

## âš¡ Estrategias de IngenierÃ­a Diamond Tier

- **Ace2 Event Hooks**: Utilizamos los hooks de Ace2 optimizados para el cliente 1.12.1, evitando el uso de bucles `OnUpdate` pesados.
- **Dynamic Module Unloading**: Los mÃ³dulos de Naxxramas no residen en memoria mientras estÃ¡s en Karazhan, reduciendo el footprint de memoria.
- **Turtle WoW Event Sync**: BigWigs detecta mecÃ¡nicas exclusivas de los bosses del servidor mediante el escaneo de buffs/debuffs custom.

---
Â© 2026 **DarckRovert** â€” El SÃ©quito del Terror.
*SincronizaciÃ³n tÃ¡ctica para la conquista de Azeroth.*

