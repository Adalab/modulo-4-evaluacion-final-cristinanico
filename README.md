# Evaluación Módulo 4 Cristina Nicolás

Accio **DATABASE OF SPELLS!**, un buscador de hechizos del Wizarding World.

Ha sido todo un descubrimiento ver cómo se crean las bases de datos y he de decir que, aunque me queda mucho por aprender y no creo que sea nada fácil porque todo tiene que ser perfecto para que funcione, el **MÓDULO 4: BASES DE DATOS**, me ha gustado.

Esto es lo que tienes que saber de esta base de datos:

- Es un servidor de Express que utiliza MySQL para interactuar con una base de datos realizada en MySQLWorkbench. El servidor está configurado para manejar solicitudes GET, POST, PUT y DELETE a la ruta '/spells'.
- El servidor se configura para usar cors y json. Se inicia en el puerto 4001.
- Para iniciar el servidor, hay que ejecutar el archivo principal en el proyecto con Node.js y asegurarse de tener un archivo .env en la raíz del mismo con las credenciales de la base de datos para que estos no queden expuestos. 

**Dependencias**
- express
- cors
- mysql2/promise
- dotenv

**Endpoints**
- GET '/spells': Devuelve todos los hechizos de la base de datos. 
- GET '/spells/:id': Devuelve un solo hechizo basado en su ID.
- POST '/spells': Agrega un nuevo hechizo a la base de datos. Los datos del hechizo se envían en el cuerpo de la solicitud --> spell, name, description.
- PUT '/spells/:id': Elimina un hechizo existente de la base de datos basado en su ID. 

> **NOTA:** Hay puntos a mejorar, por supuesto, pero después de procesar tantísima información en tan poco estoy satisfecha de ver que el aprendizaje va dando sus frutos. Seguiré trabajando en este proyecto para darle más funcionalidades a la base de datos y añadirle un front.

La he hecho yo sola, si, pero con la estimable ayuda de las profes de Adalab; que cuando necesitaba un poco de perspectiva, me la han dado. 

## 🚀 About Me
Si teneis alguna pregunta del proyecto, estoy aquí GIT para lo que necesitais: https://github.com/cristinanico