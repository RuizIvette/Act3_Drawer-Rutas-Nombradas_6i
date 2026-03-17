import 'package:flutter/material.dart';
import 'LasPaginas/inicio.dart';
import 'LasPaginas/didacticos.dart';
import 'LasPaginas/edades.dart';
import 'LasPaginas/configuracion.dart';
import 'LasPaginas/perfil.dart';

void main() {
  runApp(JugueteriaApp());
}

class JugueteriaApp extends StatelessWidget {
  const JugueteriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juguetería Ivette',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/didacticos': (context) => const Didacticos(),
        '/edades': (context) => const Edades(),
        '/configuracion': (context) => const Configuracion(),
        '/perfil': (context) => const Perfil(),
      },
    );
  }
}

// --- WIDGET COMPARTIDO: DRAWER PERSONALIZADO ---
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 20),
            color: Colors.purple,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/RuizIvette/imagenes/refs/heads/main/juguetron.jfif'),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Juguetería", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text(
                        "Correo: Juguetería@gmail.com\nDirección: Calle123\nTeléfono: 656-124-2211",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _drawerItem(context, Icons.home, "Inicio", "/"),
                  _drawerItem(context, Icons.school, "Didácticos", "/didacticos"),
                  _drawerItem(context, Icons.child_care, "Edades 3 a 5 años", "/edades"),
                  _drawerItem(context, Icons.settings, "Configuración", "/configuracion"),
                  _drawerItem(context, Icons.person, "Perfil", "/perfil"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}

// --- WIDGET COMPARTIDO: BARRA DE BÚSQUEDA ---
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.purple, width: 1),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Buscar...",
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search, color: Colors.purple),
        ),
      ),
    );
  }
}