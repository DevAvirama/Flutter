import 'package:flutter/material.dart';

void main() {
  runApp(const TiendaMascotas());
}

class TiendaMascotas extends StatelessWidget {
  const TiendaMascotas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda de Mascotas',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mundo Mascotas 🐾'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text('Menú Principal', style: TextStyle(fontSize: 20)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.pets),
              title: const Text('Perros 🐕'),
              onTap: () {
                print('Seleccionaste Perros');
              },
            ),
            ListTile(
              leading: const Icon(Icons.pets),
              title: const Text('Gatos 🐈‍⬛'),
              onTap: () {
                print('Seleccionaste Gatos');
              },
            ),
            ListTile(
              leading: const Icon(Icons.restaurant),
              title: const Text('Alimentos 🦴'),
              onTap: () {
                print('Seleccionaste alimento');
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_soccer),
              title: const Text('Accesorios 🎾'),
              onTap: () {
                print('Seleccionaste accesorios');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.pets, color: Colors.teal),
              title: const Text('Alimento para Perro 🐕'),
              subtitle: const Text('Bulto de 10Kg- Raza Mediana'),
              trailing: const Text('\$45.000'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.sports_soccer, color: Colors.teal),
              title: const Text('Juguete para Gato 🎾'),
              subtitle: const Text('Pelota interactiva con sonido'),
              trailing: const Text('\$15.000'),
            ),
          ),
        ],
      ),
    );
  }
}
