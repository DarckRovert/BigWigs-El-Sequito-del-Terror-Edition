# Contributing to BigWigs (Advanced Boss Mods) 🛡️⚔️

¡Gracias por contribuir a la supervivencia del **Séquito del Terror**! Para mantener el estándar **Diamond Tier** de **DarckRovert**, todas las contribuciones deben centrarse en la latencia mínima y la precisión milimétrica de los temporizadores de banda.

---

## 🛡️ Estándares Técnicos (Raid Core)

Este AddOn está optimizado para **Turtle WoW** (WoW v1.12.1). Las contribuciones DEBEN cumplir con:

1.  **Zero-Latency Alerting**: Los nuevos módulos de boss no deben añadir más de 0.5ms de overhead al hilo de renderizado principal del cliente.
2.  **No Lua 5.1+**: El motor es Lua 5.0. Prohibido el operador `#` (usa `table.getn`).
3.  **Sync Fidelity**: Cualquier alerta de red debe usar `Comm.lua` de forma asíncrona para no saturar el canal de banda.
4.  **Skin Apex Standard**: Las barras (CandyBar) deben ser compatibles con los perfiles visuales unificados de pfUI.

## 📐 Arquetipo de Desarrollo

Si deseas contribuir:
- **`Raids/`**: Contiene los módulos de cada jefe. Es la parte más dinámica. Clasifica los bosses custom en carpetas como `Karazhan/`, `EmeraldSanctum/`, etc.
- **`Plugins/`**: Contiene la lógica central de las barras, sonidos y alertas visuales.
- **`Libs/`**: Librerías Ace2 heredadas. No manipular a menos que sea estrictamente necesario para la compatibilidad con el cliente 1.12.1.

## 💎 Proceso de Pull Request

1.  **Fork & Branch**: Trabaja en ramas descriptivas (`fix/boss-timer`, `feature/karazhan-module`).
2.  **Documentación**: Actualiza `CHANGELOG.md` antes de enviar el PR.
3.  **Branding**: Mantén los enlaces institucionales oficiales de **DarckRovert**.

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Sincronización táctica para la conquista de Azeroth.*