import 'package:flutter/material.dart';
import '../main.dart';

class Didacticos extends StatelessWidget {
  const Didacticos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Juguetería Ivette", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchBar(),
            Center(child: Image.network('https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/jugueteria.jfif', height: 200, width: 200)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("didácticos", style: TextStyle(fontSize: 14, color: Colors.grey)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Didácticos", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.purple)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("(1) productos"),
            ),
            const SizedBox(height: 15),
            _horizontalProductCard("Rompecabezas", "150.00", 'https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/rompe.jfif'),
          ],
        ),
      ),
    );
  }

  Widget _horizontalProductCard(String name, String price, String url) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.pink, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.network(url, width: 80, height: 80),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("\$$price"),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(5)),
              child: const Icon(Icons.add_shopping_cart, color: Colors.white, size: 20),
            ),
          )
        ],
      ),
    );
  }
}