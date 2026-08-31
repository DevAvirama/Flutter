import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendario'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: eventos.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(eventos[index]['evento']),
            subtitle: Text(eventos[index]['fecha']),
            trailing: Text(
              eventos[index]['hora'],
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            leading: Icon(Icons.event),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> eventos = [
  {'evento': 'Cumpleaños de mamá', 'fecha': '2026-10-15', 'hora': '08:00 PM'},
  {'evento': 'Vuelo a Bogotá', 'fecha': '2026-11-02', 'hora': '06:00 AM'},
  {'evento': 'Cita odontólogo', 'fecha': '2026-11-10', 'hora': '04:30 PM'},
  {'evento': 'Reunión de padres', 'fecha': '2026-11-25', 'hora': '07:00 AM'},
  {'evento': 'Aniversario', 'fecha': '2026-12-05', 'hora': '09:00 PM'},
  {'evento': 'Fiesta de fin de año', 'fecha': '2026-12-31', 'hora': '10:00 PM'},
];
