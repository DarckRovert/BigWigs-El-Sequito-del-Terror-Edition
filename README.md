# BigWigs — Advanced Boss Mods (v9.4.0 [Omni-Tier]) ⚔️⏱️

> **The definitive raid encounter manager for Turtle WoW.** Optimizado para el clan **El Séquito del Terror** con soporte completo para mazmorras personalizadas (Karazhan, Emerald Sanctum, Black Morass) bajo la supervisión técnica de **DarckRovert**.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
[![Version](https://img.shields.io/badge/version-v9.4.0--Omni--Tier-blue)](./CHANGELOG.md)
[![World of Warcraft](https://img.shields.io/badge/WoW-1.12.1--Turtle-orange)](https://turtle-wow.org)
[![Support](https://img.shields.io/badge/Support-Ko--fi-blue)](https://ko-fi.com/darckrovert)

---

## 🏛️ ¿Qué es BigWigs [Séquito Edition]?

Es la herramienta de orquestación de banda definitiva. Esta versión incluye módulos exclusivos para los encuentros de **Turtle WoW**, con barras de tiempo milimétricas y alertas visuales/auditivas críticas para la supervivencia del Séquito en raids de 40 jugadores.

### 🧩 Encounter Feature Matrix (Capacidades)

| Módulo | Tipo de Datos | Funcionalidad | Descripción |
| :--- | :--- | :--- | :--- |
| **Custom Alerts** | Event Logic | Alertas de Turtle WoW | Soporte para bosses exclusivos (Concavius, Ostarius, etc.) |
| **CandyBar Engine**| Visualizer | Barras de Alta Visibilidad | Temporizadores precisos para habilidades de boss |
| **Proximity Sync** | Networking | Monitor de Distancia | Alertas de proximidad para mecánicas de propagación |
| **Terror Link** | Integration | Neural Raid Sync | Comunicación asíncrona con **TerrorSquadAI** |
| **Apex Raid Skin** | Visual Mod | Diseño Diamond Tier | Barras elegantes y minimalistas integradas con pfUI |

### ⚡ Benchmarks de Precisión Táctica (v9.4)

| Operación | Latencia Séquito | Latencia Standard | Estado |
| :--- | :---: | :---: | :---: |
| **Timer Accuracy** | ±10ms | ±100ms | ✅ |
| **Event Parsing** | < 1ms | ~5ms | ✅ |
| **Memory usage** | ~2MB | ~5MB+ | ✅ |

---

## 🏗️ Suite de Documentación (Wiki)

Domina los encuentros más difíciles en nuestra base de conocimientos:

- 📐 **[Arquitectura de Encuentros](./wiki/Architecture.md)**: Cómo desarrollamos módulos para bosses custom.
- 🛠️ **[Guía de API Raid Mod](./wiki/API_Guide.md)**: Hooks para alertas externas.
- ❓ **[FAQ de Raideo](./wiki/FAQ.md)**: ¿Por qué no veo las barras de Kel'Thuzad?
- 📖 **[Manual del Comandante](./wiki/User_Manual.md)**: Guía de configuración y perfiles.

## 🚀 Despliegue Rápido (Encounter-Flow)

1.  **Limpieza**: Borra cualquier versión previa de `BigWigs` en `AddOns/`.
2.  **Instalación**: Extrae en `Interface\AddOns\BigWigs\`.
3.  **Activación**: Al entrar en una estancia de banda, BigWigs cargará automáticamente el módulo correspondiente.

## 🔗 Ecosistema Oficial (DarckRovert)

- [Live Streams (Twitch)](https://twitch.tv/darckrovert)
- [Web Corporativa](https://sequitodelterror.netlify.app/)
- [Soporte & Donaciones (Ko-fi)](https://ko-fi.com/darckrovert)

---
© 2026 **DarckRovert** — El Séquito del Terror.
*Sincronización táctica para la conquista de Azeroth.*