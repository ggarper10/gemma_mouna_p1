import 'package:flutter/material.dart';
import '../models/prenda_models.dart';

class DetalleView extends StatelessWidget {
  final Prenda prenda;

  const DetalleView({super.key, required this.prenda});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 240, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 232, 255),
        title: Text(
          prenda.nombre,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 123, 44, 191),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 123, 44, 191),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Animación Hero: Conecta esta foto con la foto pequeña de la lista
            Hero(
              tag: prenda.id, 
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.network(
                  prenda.imagenUrl,
                  width: double.infinity,
                  height: 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    prenda.nombre,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 123, 44, 191),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 243, 176), // Amarillo pastel
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      prenda.precio,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 155, 93, 229),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    prenda.descripcion,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}