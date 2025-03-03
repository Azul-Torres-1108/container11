import 'package:flutter/material.dart';
import 'dart:math'; // Importación necesaria para usar la constante pi

void main() {
  runApp(const ContenedorAutonomo());
}

class ContenedorAutonomo extends StatelessWidget {
  const ContenedorAutonomo({super.key}); // Constructor con key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // AppBar personalizado
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Mederyth Azul Torres',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
              Text(
                'Mat: 22308051281108',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
          backgroundColor: const Color(0xFF1f91ea),
          centerTitle: true, // Alineación a la izquierda
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10), // Bordes redondeados en la parte inferior
            ),
          ),
        ),
 body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Alinea los hijos en la parte superior
            children: [
            const SizedBox(height: 55),
              // Segundo contenedor con rotación y sombra
              Transform.rotate(
                angle: pi / 12, // Rotación en radianes (-15 grados)
                child: Container(
                  width: 250, // Ancho aumentado
                  height: 100, // Alto aumentado
                  decoration: BoxDecoration(
                    color: const Color(0xFF1f91ea), // Color corregido
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Color de la sombra
                        blurRadius: 10, // Desenfoque de la sombra
                        spreadRadius: 2, // Extensión de la sombra
                        offset: const Offset(4, 4), // Desplazamiento de la sombra
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Hola a todos",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}