# 🛠️ Wiki: Guía de API — Advanced Boss Mods (BigWigs)

BigWigs expone métodos para que otros AddOns del ecosistema **Séquito del Terror** puedan reaccionar a las mecánicas de los jefes.

## 📡 Funciones de Alerta (Raid API)

### `BigWigs_Message(msg, color, sound)`
Emite un mensaje de banda estilizado por los canales locales.
- **`msg`**: Texto de la alerta.
- **`color`**: Esquema de color (ej: "Red", "Blue").

### `BigWigs_StartBar(boss, barName, dur, icon)`
Inicia una barra de temporización de CandyBar desde un script externo.

## 📎 Integración con Ecosistema Gravity

- **Neural Strategy**: **WCS_Brain** utiliza la API de BigWigs para predecir cuándo el jefe lanzará una habilidad de área y activar automáticamente las defensas de la mascota.
- **Combat Meter Sync**: **TerrorMeter** pausa y reanuda sus contadores basándose en los estados de combate detectados por BigWigs para garantizar métricas puras.

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Sincronización táctica para la conquista de Azeroth.*
