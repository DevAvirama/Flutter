import 'package:flutter/material.dart';

class ContactosPersonales extends StatefulWidget {
  const ContactosPersonales({super.key});

  @override
  State<ContactosPersonales> createState() => _ContactosPersonalesState();
}

class _ContactosPersonalesState extends State<ContactosPersonales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos Personales'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(contactos[index]['nombre']),
            subtitle: Text(contactos[index]['telefono']),
            trailing: Icon(Icons.call, color: Colors.teal),
            leading: Icon(Icons.person),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> contactos = [
  {'nombre': 'Juan Pérez', 'telefono': '300 123 4567'},
  {'nombre': 'María López', 'telefono': '310 987 6543'},
  {'nombre': 'Carlos Ruiz', 'telefono': '320 456 7890'},
  {'nombre': 'Ana Martínez', 'telefono': '315 789 1234'},
  {'nombre': 'Luis Gómez', 'telefono': '312 345 6789'},
  {'nombre': 'Diana Vargas', 'telefono': '316 654 3210'},
  {'nombre': 'Andrés Castro', 'telefono': '318 111 2233'},
];
