import 'package:flutter/material.dart';
import '../main.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text("Perfil", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Center(child: Image.network('https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/jugueteria.jfif', height: 200, width: 200)),
            const SizedBox(height: 20),
            _profileBox(
              child: Row(
                children: [
                  const CircleAvatar(backgroundColor: Colors.pink, child: Icon(Icons.person, color: Colors.white)),
                  const SizedBox(width: 15),
                  const Text("Ivette Ruiz 6I", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            _profileBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Pedidos recientes", style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("No se encontraron resultados"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            _profileBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Reseñas", style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("Sin reseñas"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileBox({required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFFFF1F1), // Rosa sólido
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}