import 'package:flutter/material.dart';

//TÍTULO, BUSCADOR Y FONDO
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
          'Encuentra lo que buscas',
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
              labelText: 'Buscador',

              //ICONO DE LUPA
              prefixIcon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 255, 143, 171),
              )
            )
          ),

          const SizedBox(height: 20), //Separador

          //TÍTULO DE ABAJO, PRODUCTOS DESTACADOS
          Row(
            children: const[
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
                'Productos destacados',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 123, 44, 191),
                  fontSize: 16.0,
                  letterSpacing: 1.6
                )
              )
            ]
          ),

          const SizedBox(height: 15), //Separador

          const Contenido(texto: 'Resultado 1'),
          const SizedBox(height: 10), //Separador
          const Contenido(texto: 'Resultado 2'),
        ]
      )
    );
  }
}


//CONTENIDO DEBAJO DEL BUSCADOR
class Contenido extends StatelessWidget{
  final String texto;
  const Contenido({super.key, required this.texto});

  @override
  Widget build (BuildContext context){
    return Container(
      color: Colors.white,
      
      child: Row(
        children: [
          const SizedBox(width: 20), //Separador
          //ICONO DE ESTRELLA
          const Icon(
            Icons.stars_rounded,
            color: Color.fromARGB(255, 250, 233, 138),
          ),

          const SizedBox(width: 20),//Separador

          //TEXTO MOSTRADO EN PANTALLA
          Text(
            texto,
            style: const TextStyle(
              color: Colors.black
            )
          )
        ]
      )
    );
  }
}