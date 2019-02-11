#Sólido de revolución
Víctor Ceballos Espinosa

##Introducción
En esta práctica se busca introducirnos a la creación de objetos 3D. Al poder llegar a ser bastante engorrosa la creación de los mismos, se ha optado por hacer uso de los sólidos de revolución. Esto consiste en que dado un perfil inicial, se le hace girar sobre un eje, creándose un objeto en tres dimensiones a partir de dicho perfil inicial que estaba dibujado en dos dimensiones. A continuación se muestra un sólido de revolución generado por una circunferencia.

<p align="center">
    <img width="564" alt="captura de pantalla 2019-02-11 a las 17 31 33" src="https://user-images.githubusercontent.com/15388747/52581664-30dc7c80-2e23-11e9-86f1-ef943e2b02a9.png">
</p>

##Dibujo del perfil
Tal y como ya se ha comentado, para construir el sólido de revolución es necesario en un primer momento definir el perfil que se quiere hacer rotar. Para conseguir esto en mi implementación, he creado una primera pantalla en la que en el centro se encuentra el eje sobre el cual se va a hacer rotar dicho perfil. Para dibujar el perfil, no habrá más que ir haciendo uso del ratón para ir introduciendo los vértices haciendo click. Para ayudar a visualizar la arista que se va a generar entre dos vértices, he decidido mostrar dinámicamente esta. Con esto se consigue que el usuario visualice mejor la futura arista a añadir por la adición del nuevo vértice.

Cada vez que se hace click en la parte derecha de dicha pantalla, se añade un objeto de la clase Vertex a una estructura de almacenamiento interna. Adicionalmente, se van añadiendo objetos de la clase Line que son mostrados para el usuario pueda visualizar el perfil que está generando según lo está dibujando.

##Rotación
Para llevar a cabo todos los cálculos relacionados con la rotación, decidí delegar todas las responsabilidades a una clase llamada VertexRotationManager. Como su propio nombre indica, es la clase encargada de llevar a cabo la rotación de todos los vértices del perfil, actualizando el objeto de la clase PShape creado en el método renderThreeDimensionForm en el archivo threeDimensionForm. 

Cabe destacar que para la creación del sólido por revolución se hace uso de 45 rotaciones ya que cada vez se rota el perfil 8 grados.

##Reinicio
En todo momento se le permite al usuario reiniciar la creación del sólido de revolución. Esto incluye el momento en el que está dibujando el perfil y el momento en el que ya ha generado el sólido de revolución y se encuentra en la segunda pantalla.

##Instrucciones
Para comenzar con el dibujo del perfil, solo hacer falta en la parte derecha de la primera pantalla ir haciendo click con el ratón. Se podrá observar cómo se va creando el perfil ya que se puede ver las aristas ya definidas. 

Cuando ya haya terminado de dibujar el perfil, haciendo uso de la tecla “f”, podrá generar el sólido de revolución, pasando a la segunda pantalla. Adicionalmente puede hacer uso de la tecla “r” para reiniciar el dibujo del perfil. 

En esta segunda pantalla, haciendo uso del ratón podrá desplazar dicho sólido de revolución. Adicionalmente, podrá reiniciar el programa haciendo uso de la tecla “r”.
