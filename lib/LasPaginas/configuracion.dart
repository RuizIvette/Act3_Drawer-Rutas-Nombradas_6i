import 'package:flutter/material.dart';
import '../main.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Juguetería Ivette", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSearchBar(),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Configuración", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            ),
            Image.network('https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/jugueteria.jfif', height: 200, width: 200),
            const SizedBox(height: 20),
            _configBox(
              child: Column(
                children: [
                  const Text("Idioma", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _btn("Español"),
                      const SizedBox(width: 10),
                      _btn("Inglés"),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            _configBox(child: const Text("Cambiar dirección de envío", textAlign: TextAlign.center)),
            const SizedBox(height: 10),
            _configBox(
              child: Column(
                children: [
                  const Text("Cerrar sesión"),
                  const SizedBox(height: 10),
                  _btn("Cerrar"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _configBox({required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFFFFF1F1), // Rosa muy clarito sólido
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  Widget _btn(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(5)),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}