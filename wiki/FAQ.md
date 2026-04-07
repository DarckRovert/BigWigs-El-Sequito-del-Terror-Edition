# ❓ Wiki: FAQ [El Séquito del Terror] — BigWigs

Preguntas frecuentes y resolución de problemas técnicos para el gestor de encuentros v9.4+.

## 🛠️ Error: No veo las barras de los bosses de Karazhan.
- **Causa**: BigWigs requiere que el módulo de la estancia esté cargado (Load on Demand).
- **Solución**: Asegúrate de que las bibliotecas `Babble-Zone` estén actualizadas y que no haya otros Boss Mods activos que entren en conflicto con los eventos de chat de Turtle WoW.

## ⚙️ ¿Cómo cambio el color y tamaño de mis barras CandyBar?
- **Configuración**: Escribe `/bw` para abrir el panel de opciones. Ve a la sección **Plugins -> Bars**. Aquí puedes ajustar la escala, fuente (estamos usando `Interface\AddOns\pfUI\fonts\continuum.ttf` por defecto) y los colores institucionales.

## ⚡ ¿Por qué recibo alertas de boss que el resto de la raid no ve?
**Estado**: ✅ Sincronización Avanzada.
- Como miembro del Séquito en v9.4.0, tu cliente detecta y emite eventos de Turtle WoW más rápido que las versiones antiguas. Tu BigWigs está "educando" a la raid a través de los canales ocultos de `Comm.lua`.

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Sincronización táctica para la conquista de Azeroth.*
