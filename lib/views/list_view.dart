import 'package:flutter/material.dart';
import 'package:gemma_mouna_p1/models/prenda_models.dart';

//CLASE PARA EL TÍTULO, BUSCADOR Y FONDO
class Buscador extends StatelessWidget{
  const Buscador({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //COLOR DE FONDO
      backgroundColor: const Color.fromARGB(255, 255, 240, 246),

      //TÍTULO
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(255, 243, 232, 255),
        title: const Text(
          'Tu rincón favorito 🎀',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            //fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 123, 44, 191)
          )
        ),

        //BOTÓN DE CERRAR SESIÓN Y VOLVER A PANTALLA PRINCIPAL
        actions:[
          IconButton(
            //ICONO DE SALIDA
            icon: const Icon(
              Icons.logout,
              color: Color.fromARGB(255, 123, 44, 191),
            ),
            tooltip: 'Cerrar sesión',
            onPressed:(){
              Navigator.pop(context);
            }
          )
        ],
      ),
      
      //CAJA DEL BUSCADOR Y TÍTULO DE ABAJO
      body: Column(
        children:[
          const SizedBox(width: double.infinity),

          //CAJA
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              //TEXTO
              labelText: 'Buscar prenda...',

              //ICONO DE LUPA
              prefixIcon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 255, 143, 171),
              )
            )
          ),

          const SizedBox(height: 20), //Separador

          //TÍTULO DE ABAJO, PRODUCTOS DESTACADOS
          const Row(
            children: [
              SizedBox(width: 20),//Separador

              //ICONO DE ESTRELLAS
              Icon(
                Icons.auto_awesome,
                color: Color.fromARGB(255, 218, 192, 47),
                size: 18,
              ),

              SizedBox(width: 8),//Separador

              //TEXTO
              Text(
                'Prendas destacadas:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 123, 44, 191),
                  fontSize: 16.0,
                  letterSpacing: 1.5
                )
              )
            ]
          ),

          const SizedBox(height: 15), //Separador

          //LISTA DE LOS ELEMENTOS
          Expanded(
            child: ListView.builder(
              itemCount: listaPrendas.length,
              itemBuilder: (context, index ){
                final prenda = listaPrendas[index];

                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  //COLOCACIÓN DE IMAGEN
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        prenda.imagenUrl,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )
                    ),
                    
                    //NOMBRE PRENDA
                    title: Text(
                      prenda.nombre,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )
                    ),

                    //DESCRIPCIÓN Y PRECIO
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(prenda.descripcion),
                        const SizedBox(height: 4),
                        Text(
                          prenda.precio,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 123, 44, 191),
                          ),
                        )
                      ]
                    ),

                    //ICONO DE ESTRELLA DESTACADA
                    trailing: const Icon(
                      Icons.stars_rounded,
                      color: Color.fromARGB(255, 255, 143, 171),
                    ),

                    //INTERACCIÓN INDICANDO LA FALTA DE LA PRÁCTICA 3
                    onTap:(){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            '🎀 La visualización detallada se desarrollará en la Práctica 3 🎀',
                          ),
                          duration: Duration(seconds:3),
                        )
                      );
                    }

                  )
                );
              }
            )
          )

        ]
      )
    );
  }
}

/*
//CLASE PARA EL CONTENIDO DEBAJO DEL BUSCADOR
class Contenido extends StatelessWidget{
  final String texto;
  const Contenido({super.key, required this.texto});

  @override
  Widget build (BuildContext context){
    return Container(
      color: Colors.white,
      height: 40.0,
      
      child: Row(
        children: [
          const SizedBox(width: 20), //Separador

          //ICONO DE ESTRELLA
          const Icon(
            Icons.stars_rounded,
            color: Color.fromARGB(255, 255, 143, 171)
          ),

          const SizedBox(width: 20),//Separador

          //TEXTO MOSTRADO EN PANTALLA
          Text(
            texto,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0
            )
          )
        ]
      )
    );
  }
}
*/