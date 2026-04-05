# Arquitectura — BigWigs Sequito 🏗️

mermaid
graph TD
    CORE[BigWigs Core]
    PLUGINS[Plugins: Bars, Sounds, Proximity]
    MODULES[Raid Modules: Naxx, AQ40, etc.]
    SEQUITO[Sequito Voice / Skin Bridge]

    CORE --> PLUGINS
    CORE --> MODULES
    SEQUITO --> PLUGINS
    SEQUITO --> MODULES


## Sistemas
- **Raids/**: Contiene la lógica de cada encuentro.
- **Plugins/**: Maneja la visualización y alertas sonoras.
- **Sequito Patch**: Intercepta eventos de 'Sound' para usar el banco de voces en español.
