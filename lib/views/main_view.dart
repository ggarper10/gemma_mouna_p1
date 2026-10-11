import 'package:flutter/material.dart';

class MainView extends StatelessWidget{
  const MainView({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F6),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             _crearCabecera(),
             _crearFormulario(),
            ],
          ),
        ),
      ),
    );
  }

//Crear cabecera
Widget _crearCabecera(){
  return Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: const Color(0xFFF3E8FF),
      borderRadius: BorderRadius.circular(25),
      border: Border.all(
        color: const Color(0xFFFFC8DD),
        width: 3,
      ),
      boxShadow: const[
        BoxShadow(
          color: Color(0x33CDB4DB),
          blurRadius: 12,
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
                color: Color(0xFFFFF3B0),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.auto_awesome,
                color: Color(0xFF9B5DE5),
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'NOMBRE APP',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7B2CBF),
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color(0xFFFFF3B0),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.auto_awesome,
                color: Color(0xFF9B5DE5),
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
            color: Color(0xFF9D4EDD)),
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
          color: const Color(0xFFBDE0FE),
          width: 3,
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.stars_rounded, color: Color(0xFFFF8FAB), size: 26),
              SizedBox(width: 8),
              Text(
                'Tus datos de acceso',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7B2CBF),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Usuario o correo',
              prefixIcon: const Icon(Icons.person_rounded, color: Color(0xFFFF8FAB)),
              filled: true,
              fillColor: const Color(0xFFFFF0F6),
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
              prefixIcon: const Icon(Icons.key_rounded, color: Color(0xFF9B5DE5)),
              filled: true,
              fillColor: const Color(0xFFF3E8FF),
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
              ),
            ),
          ),
        ]
      ),
    );
  }
}