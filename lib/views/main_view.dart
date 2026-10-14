import 'package:flutter/material.dart';
import 'list_view.dart';

class MainView extends StatelessWidget{
  const MainView({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 255, 240, 246),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             _crearCabecera(),
             _crearFormulario(),
             _crearBotones(context),
            ],
          ),
        ),
      );
  }

  //Crear cabecera
  Widget _crearCabecera(){
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 232, 255),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 200, 221),
          width: 3,
        ),
        boxShadow: const[
          BoxShadow(
            color: Color.fromARGB(120, 205, 180, 219),
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 243, 176),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.auto_awesome,
                  color: Color.fromARGB(255, 155, 93, 229),
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'CUTTIE STUDIO',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 123, 44, 191),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 243, 176),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.auto_awesome,
                  color: Color.fromARGB(255, 155, 93, 229),
                  size: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Bienvenid@, introduce tu usuario y contraseña para continuar<3',
            style: TextStyle(
              fontSize: 15, 
              color: Color.fromARGB(255, 157, 78, 221),
          ),
          ),
          ],
        ),
      );
    }

//Crear el formulario
  Widget _crearFormulario(){
    return Container(
      width: 450,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: const Color.fromARGB(255, 189, 224, 254),
          width: 3,
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.stars_rounded, 
                color: Color.fromARGB(255, 255, 143, 171), 
                size: 26
              ),
              SizedBox(width: 8),
              Text(
                'Tus datos de acceso',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 123, 44, 191),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Usuario o correo',
              prefixIcon: const Icon(
                Icons.person_rounded, 
                color: Color.fromARGB(255, 255, 143, 171)
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 240, 246),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              prefixIcon: const Icon(
                Icons.key_rounded, 
                color: Color.fromARGB(255, 155, 93, 229)
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 243, 232, 255),
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
              ),
            ),
          ),
        ]
      ),
    );
  }

  //Crear el botón de navegación
  Widget _crearBotones(BuildContext context){
    return Container(
      width:450,
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 123, 44, 191),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),

        //Crear cambio a la segunda pantalla
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Buscador(),
            ),
          );
        },
        child: const Text(
          '¡Entrar!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}