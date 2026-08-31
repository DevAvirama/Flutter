import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion Semilleros ADSO",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplicacion Semilleros ADSO"),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text("Menu de opciones"),
              Divider(),
              Text("Contactos"),
              Text("Cambiar contraseña"),
              Text("Cerrar sesión"),
            ],
          ),
        ),
        body: Column(
          children: [Text("Proyecto Sena 1"), Text("Proyecto Sena 2")],
        ),
      ),
    );
  }
}
