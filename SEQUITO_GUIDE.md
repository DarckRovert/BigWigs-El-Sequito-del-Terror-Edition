# BigWigs — Guía TerrorLink (Séquito del Terror)

## ¿Qué es TerrorLink?

`Plugins/TerrorLink.lua` es el puente oficial entre BigWigs y TerrorSquadAI. Captura datos de bosses en tiempo real y los envía al motor de decisión de la IA táctica del Séquito.

## Cómo Funciona

```
BigWigs                     TerrorLink                  TerrorSquadAI
   |                            |                            |
   |-- BigWigs_Message -------->|                            |
   |-- BigWigs_StartBar ------->|--- ReceiveExternalData --->|
   |-- BigWigs_StopBar -------->|                            |
   |-- BigWigs_BossDeath ------>|                            |
```

### Eventos capturados

| Evento BigWigs | Tipo de dato enviado a TerrorSquadAI |
|---|---|
| `BigWigs_Message` (Urgent/Important) | `{type="message", priority="critical"}` |
| `BigWigs_StartBar` | `{type="timer_start", text, duration}` |
| `BigWigs_StopBar` | `{type="timer_stop", text}` |
| `BigWigs_BossDeath` | `{type="boss_death"}` |

## Comandos

```
/terrorlink    — Toggle activar/desactivar TerrorLink
```

## Estado de Conexión

TerrorLink intenta conectarse automáticamente al cargar. Si TerrorSquadAI no está disponible al inicio, se registra en `ADDON_LOADED` y reintenta cuando TerrorSquadAI termine de cargar.

## Diagnóstico

Si TerrorLink no conecta:
1. Verificar que TerrorSquadAI está activado en el gestor de addons
2. Verificar que `TerrorSquadAI.Modules.BigWigsIntegration` existe (requiere módulo `BigWigsIntegration.lua`)
3. Usar `/tsai debug on` para ver mensajes de debug de TerrorSquadAI
