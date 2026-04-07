# â“ Wiki: FAQ [El SÃ©quito del Terror] â€” BigWigs

Preguntas frecuentes y resoluciÃ³n de problemas tÃ©cnicos para el gestor de encuentros v9.4+.

## ðŸ› ï¸ Error: No veo las barras de los bosses de Karazhan.
- **Causa**: BigWigs requiere que el mÃ³dulo de la estancia estÃ© cargado (Load on Demand).
- **SoluciÃ³n**: AsegÃºrate de que las bibliotecas `Babble-Zone` estÃ©n actualizadas y que no haya otros Boss Mods activos que entren en conflicto con los eventos de chat de Turtle WoW.

## âš™ï¸ Â¿CÃ³mo cambio el color y tamaÃ±o de mis barras CandyBar?
- **ConfiguraciÃ³n**: Escribe `/bw` para abrir el panel de opciones. Ve a la secciÃ³n **Plugins -> Bars**. AquÃ­ puedes ajustar la escala, fuente (estamos usando `Interface\AddOns\pfUI\fonts\continuum.ttf` por defecto) y los colores institucionales.

## âš¡ Â¿Por quÃ© recibo alertas de boss que el resto de la raid no ve?
**Estado**: âœ… SincronizaciÃ³n Avanzada.
- Como miembro del SÃ©quito en v2.0.0, tu cliente detecta y emite eventos de Turtle WoW mÃ¡s rÃ¡pido que las versiones antiguas. Tu BigWigs estÃ¡ "educando" a la raid a travÃ©s de los canales ocultos de `Comm.lua`.

---
Â© 2026 **DarckRovert** â€” El SÃ©quito del Terror.
*SincronizaciÃ³n tÃ¡ctica para la conquista de Azeroth.*

