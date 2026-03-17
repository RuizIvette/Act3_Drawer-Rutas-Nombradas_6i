import 'package:flutter/material.dart';
import '../main.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.pink,
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: const Text("Envio gratis", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
            AppBar(
              backgroundColor: Colors.purple,
              title: const Text("Juguetería Ivette", style: TextStyle(color: Colors.white)),
              iconTheme: const IconThemeData(color: Colors.white),
              actions: [
                IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
                IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSearchBar(),
            Image.network('https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/iniciodes.jfif', height: 200, width: 200, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  const Text("Lo más vendido", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _productCard("Barbie", "350.00", "https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/barbie.jfif"),
                      _productCard("Osito", "200.00", "https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/osito.jfif"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productCard(String name, String price, String url) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFFCE4EC), // Rosa claro sólido
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(url, height: 80),
          const SizedBox(height: 5),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text("\$$price"),
        ],
      ),
    );
  }
}