import 'package:flutter/material.dart'; // Importa los widgets de Flutter

void main() {
  runApp(const MainApp()); // Inicia la aplicación
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Quita el aviso DEBUG
      home: HomeScream(), // Pantalla principal
    );
  }
}

class HomeScream extends StatelessWidget {
  const HomeScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // BARRA SUPERIOR
      appBar: AppBar(
        backgroundColor: Colors.white, // Fondo blanco
        elevation: 0, // Quita la sombra
        leading: const Icon(
          Icons.add, // Icono de agregar
          color: Colors.black,
        ),
        title: const Text(
          'Instagram', // Título
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true, // Centra el título
        actions: const [
          Icon(
            Icons.favorite_border, // Corazón
            color: Colors.black,
          ),
          SizedBox(width: 15), // Espacio
        ],
      ),

      // CONTENIDO PRINCIPAL
      body: Column(
        children: [

          // HISTORIAS
          SizedBox(
            height: 115, // Altura de las historias

            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Permite deslizar izquierda/derecha

              child: Row(
                children: [

                  // HISTORIA 1
                  _historia(
                    "https://i.pinimg.com/474x/20/41/31/20413154b11b8014308ab79b2d81f339.jpg",
                  ),

                  // HISTORIA 2
                  _historia(
                    "https://avatarfiles.alphacoders.com/375/thumb-1920-375473.jpeg",
                  ),

                  // HISTORIA 3
                  _historia(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWoe6UWDv5Xc7SFC3vGMzIuWK7p27gVitLk-8MXYm8Rw&s=10",
                  ),

                  // HISTORIA 4
                  _historia(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXJOjEn1HLJNKwqKY-XNLN8pdTDIobcmVpw1oGNfZam7jvZT4ptrxQPdYP&s=10",
                  ),

                  // HISTORIA 5
                  _historia(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5dKWk_RVQLv5jhL0vQ9CHwZZdj1KHGLViwPcvzurHXQ&s=10",
                  ),

                  // HISTORIA 6
                  _historia(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmVk4zjEB-jC6GVOkXyTjZ6UsFq5FriPvrnKhQidlgbw&s=10",
                  ),
                ],
              ),
            ),
          ),

          // PUBLICACIONES
          Expanded(
            // Ocupa todo el espacio restante
            child: ListView(
              // Permite deslizar hacia arriba y abajo
              children: [

                // PUBLICACIÓN 1
                _publicacion(
                  usuario: "Monkey D luffy",
                  perfil: "https://avatarfiles.alphacoders.com/375/thumb-1920-375473.jpeg",
                  imagen:  "https://media.vandalsports.com/i/640x360/4-2024/202449115058_1.jpg",
                  likes: "123 Me gusta",
                  descripcion: "Con ganas de Destruir a Kaido 🐉",
                ),

                // PUBLICACIÓN 2
                _publicacion(
                  usuario: "Satoru Gojo",
                  perfil: "https://i.pinimg.com/474x/20/41/31/20413154b11b8014308ab79b2d81f339.jpg",
                  imagen: "https://gestion.pe/resizer/v2/NXANGJ2IAJD3NPWPUWNH66NJHY.jpg?auth=7cde5ea778db244efacfb88c8e87d29d5970b6cfbd71999712a36f704b6306eb&width=1920&height=1080&quality=75&smart=true",
                  likes: "89 Me gusta",
                  descripcion: "Estoy Aburrido quiero matar a Alguien ✨",
                ),

                // PUBLICACIÓN 3
                _publicacion(
                  usuario: "Naruto Uzumaki",
                  perfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWoe6UWDv5Xc7SFC3vGMzIuWK7p27gVitLk-8MXYm8Rw&s=10",
                  imagen: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSttxkIgv-zNoFmu5jCvspAv6WPeP_XXBg-LytQq0uViMzkhkFxIvNMBLUE&s=10",
                  likes: "245 Me gusta",
                  descripcion: "Que Calorrrr!! 😎",
                ),

                // PUBLICACIÓN 4
                _publicacion(
                  usuario: "Baki Hanma",
                  perfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXJOjEn1HLJNKwqKY-XNLN8pdTDIobcmVpw1oGNfZam7jvZT4ptrxQPdYP&s=10",
                  imagen: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGZYiBZzgojxVQR0VjUJmyhka853VlBA74Pvwjhdm5-aD0L3GyDaN1YLc&s=10",
                  likes: "312 Me gusta",
                  descripcion: "Posudo mi cucho ❤️",
                ),
              ],
            ),
          ),
        ],
      ),

      // BARRA INFERIOR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Mantiene los 5 iconos
        backgroundColor: Colors.white, // Fondo blanco
        selectedFontSize: 0, // Oculta texto
        unselectedFontSize: 0, // Oculta texto
        showSelectedLabels: false, // No muestra etiquetas
        showUnselectedLabels: false, // No muestra etiquetas

        items: [

          // INICIO
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '',
          ),

          // REELS
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.play_circle_outline,
              color: Colors.black,
            ),
            label: '',
          ),

          // ICONO CON PUNTO ROJO
          BottomNavigationBarItem(
            icon: Stack(
              children: [

                const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),

                // PUNTO ROJO
                Positioned(
                  bottom: 0,
                  right: 0,

                  child: Container(
                    width: 8,
                    height: 8,

                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, // Hace un círculo
                      color: Colors.red, // Color rojo
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          ),

          // BUSCAR
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: '',
          ),

          // PERFIL
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,

              decoration: BoxDecoration(
                shape: BoxShape.circle, // Hace circular el contenedor
                border: Border.all(
                  color: Colors.deepPurple, // Borde morado
                  width: 2,
                ),
              ),

              child: Stack(
                children: [

                  // FOTO DE PERFIL
                  Positioned.fill(
                    child: ClipOval(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9XgC6IuOnL7-9LFN4eO5KWlwAnV_3PpGPzovhms9ckN6zyKoL4PowISgp&s=10",
                        fit: BoxFit.cover, // Ajusta la imagen
                      ),
                    ),
                  ),

                  // PUNTO ROJO
                  Positioned(
                    bottom: 0,
                    right: 0,

                    child: Container(
                      width: 13,
                      height: 13,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,

                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  // FUNCIÓN PARA CREAR UNA HISTORIA
  Widget _historia(String imagen) {
    return Container(
      width: 85, // Ancho de cada historia
      margin: const EdgeInsets.symmetric(horizontal: 5), // Espacio entre historias

      child: Column(
        children: [

          Container(
            width: 75,
            height: 75,

            padding: const EdgeInsets.all(3), // Espacio del borde

            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.red,
                  Colors.orange,
                ],
              ),
            ),

            child: ClipOval(
              child: Image.network(
                imagen,
                fit: BoxFit.cover, // Ajusta la imagen
              ),
            ),
          ),

          const SizedBox(height: 5), // Espacio

          const Text(
            "Historia",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // FUNCIÓN PARA CREAR UNA PUBLICACIÓN
  Widget _publicacion({
    required String usuario,
    required String perfil,
    required String imagen,
    required String likes,
    required String descripcion,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        // CABECERA DE LA PUBLICACIÓN
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),

          // FOTO DEL USUARIO
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              perfil,
            ),
          ),

          // NOMBRE
          title: Text(
            usuario,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          // TRES PUNTOS
          trailing: const Icon(
            Icons.more_vert,
          ),
        ),

        // IMAGEN DE LA PUBLICACIÓN
//      SizedBox(
//   width: double.infinity,
//   height: 330,
//   child: Image.network(
//     imagen,
//     fit: BoxFit.cover,
//   ),
// ),


SizedBox(
  width: double.infinity,
  height: 400, // Altura de la publicación
  child: Image.network(
    imagen,
    fit: BoxFit.contain, // Muestra toda la imagen
  ),
),
        // ICONOS DE LA PUBLICACIÓN
        Row(
          children: [

            // CORAZÓN
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 28,
              ),
            ),

            // COMENTARIOS
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_bubble_outline,
                size: 27,
              ),
            ),

            // COMPARTIR
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                size: 27,
              ),
            ),

            const Spacer(), // Empuja el guardar hacia la derecha

            // GUARDAR
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                size: 27,
              ),
            ),
          ],
        ),

        // CANTIDAD DE LIKES
        Padding(
          padding: const EdgeInsets.only(left: 15),

          child: Text(
            likes,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // DESCRIPCIÓN
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 5,
            bottom: 15,
          ),

          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),

              children: [
                TextSpan(
                  text: usuario, // Nombre del usuario
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextSpan(
                  text: " $descripcion", // Texto de la publicación
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}