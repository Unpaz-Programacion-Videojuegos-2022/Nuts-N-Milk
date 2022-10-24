# Nuts-N-Milk
Nuts-N-Milk  Drive del proyecto: https://drive.google.com/drive/folders/1BNpD771EulSZsHvUjapJpzhbFUVkB15b?usp=sharing
Descripción CAMBIAR POR LO QUE CORRESPONDA

Integrantes del proyecto: CAMBIAR POR LO QUE CORRESPONDA

Instrucciones de ejecución Para ejecutar el juego es necesario tener instalado el motor La rama Godot Engine V 3.5.1

Flujo de trabajo Master La rama master será la rama considerada como válida del proyecto. Es decir. Todo código almacenado en master es código totalmente funcional.

Otras ramas Para agregar nueva funcionalidad, será obligatorio crear una nueva rama, desde la versión mas actualizada de master. Para ello se utilzará un nombre específico que sea declarativo en cuanto a la funcionalidad a desarrollar.

EJ: Si voy a crear un Rompecabezas para el escenario 1 entonces el flujo de trabajo es el siguiente:

Con Git, me paro sobre master. Hago un Pull para estar seguro de que tengo la versión más actualizada de master. Desde ese punto, creo una branch llamada rompecabezas-escenario-1 (todo minúscula, con guión medio en vez de espacio) Estando en la nueva branch, desarrollo la funcionalidad deseada. Por cada Commit realizado debe hacerse un Push para que el repositorio remoto esté actualizado. Al finalizar la funcionalidad y tener todo Pusheado, crear un Pull Request desde la branch rompecabezas-escenario-1 a master Se debe completar la información pedida en el template de pull request, al momento de abrirlo. Una vez revisado el código por un par (docente, personal a cargo), estando aprobado por el mismo, se podrá realizar un Merge Pull request a Master Commits Cada commit de proyecto debe ser Atómico y descriptivo, es decir:

Atómico: los cambios realizados entre un commit y otro deben ser los mas chicos posibles, desde simplemente cambiar algunas palabras y colores, hasta crear una escena pequeña.

Descriptivo: Los commits tienen asociados mensajes. El mensaje de cada commit debe describir de forma simple y concisa que cambios contiene el mismo. Como regla: Si para nombrar el commit tengo que poner un texto que explica 3 cambios distintos, es un commit que no es atómico. ej: "Se modificaron los colores del personaje, el texto del nivel 1 y la velocidad de movimiento de los enemigos" --> Commit muy grande ej: "Se creó la escena Personaje" --> Commit atómico

Estructura del proyecto La estructura de un proyecto es fundamental para la organización. Este proyeto seguirá la siguiente estructura:

RES:// ├── assets │ ├── personaje │ │ ├── personaje_sheet.png │ ├── enemigo │ │ ├── enemigo_sheet.png

├── escenas │ ├── personaje │ │ ├── Personaje.tscn │ │ ├── Personaje.gd

│ ├── enemigo │ │ ├── Enemigo.tscn │ │ ├── Enemigo.gd

│ ├── nivel_1 │ │ ├── nivel_1.tscn │ │ ├── nivel_1.gd │ │ ├── ui_nivel_1 │ │ │ ├── ui_nivel_1.tscn │ │ │ ├── ui_nivel_1.gd

Convención de nombres Carpetas: snake_case - minúscula y guión bajo. ej: enemigo_rojo Escenas: UpperCamelCase - primer letra de cada palabra mayúscula. ej: EnemigoRojo.tscn Scripts: UpperCamelCase - primer letra de cada palabra mayúscula. ej: EnemigoRojo.gd Assets: snake_case - minúscula y guión bajo. ej: enemigo_rojo.png Nodos: UpperCamelCase - primer letra de cada palabra mayúscula. ej: AreaDeteccion Variables: camelCase - primer letra de cada palabra mayúscula, excepto la primera. ej: var puedeDisparar = true funciones: snake_case - minúscula y guión bajo. ej: func enemigo_rojo(): señales: snake_case - minúscula y guión bajo. ej: signal perdio_vida Aclaración: Los nombres mencionados anteriormenteno llevan tildes ni caracteres especiales como Ñ. en tal caso omitirlos o usar su caracter normal correspondiente. Los nombres de cada elemento deben ser claro sobre cual es la utilidad de dicho elemento.

Nuestra principal guía para crear las distintas escenas será la propuesta por Godot https://docs.godotengine.org/es/latest/getting_started/step_by_step/instancing_continued.html#design-language

En resumen trata de modelar cada escena como un elemento de la realidad. Ver link para ver los dibujos explicativos.

Visibilidad Este repositorio es privado y solo aquellos con permisos para colaborar podrán acceder al código fuente y realizar modificaciones.
