/*SizedBox(
  width: double.infinity,
  height: 100,
  child: MyButton(),
)

Widget build(BuildContext context) {
  return Column(
    children: [
      _Header(...),  // Ya sabemos qué hace este widget
      _Body(...),
      _Footer(...),
    ],
  );
}
*/

import 'package:flutter/material.dart';

//TÍTULO, BUSCADOR Y FONDO
class Buscador extends StatelessWidget{
  const Buscador({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 240, 246),

      //TÍTULO
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(255, 243, 232, 255),
        title: const Text(
          'Encuentra lo que buscas',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 123, 44, 191)
          )
        )
      ),
      
      //BUSCADOR
      body: Column(
        children:[
          const SizedBox(width: double.infinity),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              labelText: 'Buscador',

              //ICONO
              prefixIcon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 255, 143, 171),
              )
            )
          ),

          const SizedBox(height: 20), //Separador

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
            color: Color.fromARGB(255, 255, 143, 171),
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