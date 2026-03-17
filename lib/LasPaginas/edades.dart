import 'package:flutter/material.dart';
import '../main.dart';

class Edades extends StatelessWidget {
  const Edades({super.key});

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
            const CustomSearchBar(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Edades 3 a 5 años", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("(2) productos"),
            ),
            Center(child: Image.network('https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/jugueteria.jfif', height: 200, width: 200)),
            _productItem("Set de Playa", 'https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/playa.jfif'),
            _productItem("Cubo Didáctico", 'https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/playa.jfif'),
          ],
        ),
      ),
    );
  }

  Widget _productItem(String title, String url) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.network(url, width: 80, height: 80),
          const SizedBox(width: 15),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(5)),
            child: const Icon(Icons.add_shopping_cart, color: Colors.white),
          )
        ],
      ),
    );
  }
}