# BigWigs (Séquito del Terror Edition v2.0)


BigWigs es un addon modular de "Boss Mods" diseñado para predecir y alertar sobre habilidades de jefes en bandas y mazmorras. Esta versión ha sido modificada específicamente para integrarse con el ecosistema de **TerrorSquadAI**.

## 🚀 Características Principales

*   **Timers Precisos**: Barras de tiempo para habilidades de jefes (Maldiciones, AoEs, Fases).
*   **Estilo "Terror"**: Interfaz visual rediseñada con tonos oscuros, texturas rasgadas (Otravi) y alertas en rojo sangre.
*   **Alertas Visuales y Sonoras**: Avisos claros cuando debes moverte, interrumpir o usar defensivos.
*   **Cero Fugas de Memoria**: Lógica reescrita para evitar la "contaminación de tablas" (table pollution) en bandas y optimizado para Turtle WoW (Lua 5.0).
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

### 🌐 Séquito Ecosystem Compatible (The Eyes)
Como los **Ojos** del clan, BigWigs proporciona la telemetría de jefes necesaria para que `TerrorSquadAI` y `WCS_Brain` tomen decisiones tácticas en tiempo real durante la raid.

## 📋 Comandos Disponibles

*   `/bw` - Abre la configuración principal.
*   `/bw standby` - Desactiva el addon temporalmente (útil si no eres raid leader).
*   `/terrorlink` - Diagnóstico de la integración con IA.

---
*Modificado por DarckRovert para El Séquito del Terror.*
*Para detalles técnicos de la integración, ver `ECOSYSTEM.md`.*
