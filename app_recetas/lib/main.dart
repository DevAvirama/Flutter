import 'package:flutter/material.dart';

void main() {
  runApp(const AppRecetas());
}

class AppRecetas extends StatelessWidget {
  const AppRecetas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Recetas',
      home: const Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('Ir atras');
          },
        ),
      ),
    );
  }
}
