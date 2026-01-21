# BigWigs (Edición El Séquito del Terror)

BigWigs es un addon modular de "Boss Mods" diseñado para predecir y alertar sobre habilidades de jefes en bandas y mazmorras. Esta versión ha sido modificada específicamente para integrarse con el ecosistema de **TerrorSquadAI**.

## 🚀 Características Principales

*   **Timers Precisos**: Barras de tiempo para habilidades de jefes (Maldiciones, AoEs, Fases).
*   **Alertas Visuales y Sonoras**: Avisos claros cuando debes moverte, interrumpir o usar defensivos.
*   **Soporte Turtle WoW**: Ajustado para funcionar correctamente con los scripts y eventos específicos de Turtle WoW.
*   **Integración TerrorLink**: Envía datos en tiempo real a TerrorSquadAI para coordinar estrategias de grupo.

## 🛠️ Instalación y Configuración

El addon funciona "Out of the Box" (sin configuración necesaria), pero puedes personalizarlo:

1.  Escribe `/bw` para abrir el menú de configuración.
2.  **Plugins**: Puedes activar/desactivar módulos específicos (Barras, Mensajes, Sonidos).
3.  **Posición**: Usa `Shift + Click` en las barras para moverlas (cuando están en modo prueba).

## 🎮 Uso en Combate

BigWigs se activará automáticamente al entrar en combate con un jefe soportado.

### Tipos de Mensajes
*   **Importante**: Mensaje azul grande. (Ej: "¡Fuego en ti!") -> *Muévete.*
*   **Alerta**: Mensaje amarillo. (Ej: "Fase 2 pronto") -> *Prepárate.*
*   **Boss**: Mensaje rojo. Habilidad del jefe.

## 🌐 Integración Terror Ecosystem

Esta versión incluye el plugin **TerrorLink (`TerrorLink.lua`)**.
*   **Qué hace**: Cuando BigWigs detecta una habilidad (ej: "Aliento de Fuego en 5s"), le avisa a `TerrorSquadAI`.
*   **Resultado**: `TerrorSquadAI` puede sugerirte "¡Usa Poción de Protección al Fuego!" o alertar al HUD Táctico.
*   **Estado**: Puedes verificar la conexión con `/terrorlink`.

## 📋 Comandos Disponibles

*   `/bw` - Abre la configuración principal.
*   `/bw standby` - Desactiva el addon temporalmente (útil si no eres raid leader).
*   `/terrorlink` - Diagnóstico de la integración con IA.

---
*Modificado por DarckRovert para El Séquito del Terror.*
*Para detalles técnicos de la integración, ver `ECOSYSTEM.md`.*
