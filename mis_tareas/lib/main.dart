import 'package:flutter/material.dart';

void main() {
  runApp(const Tareas());
}

class Tareas extends StatelessWidget {
  const Tareas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion de practica',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Aplicacion practica'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            padding: EdgeInsets.all(8.0),
            icon: Icon(Icons.search),
            onPressed: () {
              print('Seleccionaste Buscar');
            },
          ),
          IconButton(
            padding: EdgeInsets.all(8.0),
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('Seleccionaste Notofocaciones');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text('Buscar tareas o proyectos...'),
              leading: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Seleccionaste Buscar');
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Proyectos Recientes'), Text('Ver Todo')],
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Desarrollo FLutter App'),
                  LinearProgressIndicator(value: 50.0),
                  Row(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
