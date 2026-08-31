import 'package:flutter/material.dart';

void main() {
  runApp(const ActividadesApp());
}

class ActividadesApp extends StatelessWidget {
  const ActividadesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mis Actividades diarias',
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
        title: const Text('Mis Actividades 📅'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Center(
                child: Text(
                  'Mis Rutinas',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.wb_twighlight,
                color: Colors.orangeAccent,
              ),
              title: const Text('Mañana'),
              onTap: () {
                print('Mañana');
              },
            ),
            ListTile(
              leading: const Icon(Icons.wb_sunny, color: Colors.amber),
              title: const Text('Tarde'),
              onTap: () {
                print('Tarde');
              },
            ),
            ListTile(
              leading: const Icon(Icons.nightlight_round, color: Colors.indigo),
              title: const Text('Noche'),
              onTap: () {
                print('Noche');
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
              leading: const Icon(Icons.fitness_center, color: Colors.indigo),
              title: const Text('Entrenar 🏋️'),
              subtitle: const Text('Rutina de ejercicio del dia.'),
              trailing: const Icon(Icons.check_circle_outline),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.code, color: Colors.indigo),
              title: const Text('Programar 👾'),
              subtitle: const Text('Practica de codigo y desarrollo'),
              trailing: const Icon(Icons.check_circle_outline),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.fitness_center, color: Colors.indigo),
              title: const Text('Leer 📖'),
              subtitle: const Text('Lectura Diaria'),
              trailing: const Icon(Icons.check_circle_outline),
            ),
          ),
        ],
      ),
    );
  }
}
