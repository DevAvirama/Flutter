import 'package:flutter/material.dart';

class MisTareas extends StatefulWidget {
  const MisTareas({super.key});

  @override
  State<MisTareas> createState() => _MisTareasState();
}

class _MisTareasState extends State<MisTareas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tareas'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(tareas[index]['titulo']),
            subtitle: Text(tareas[index]['descripcion']),
            trailing: Icon(Icons.check_box, color: Colors.teal),
            leading: Icon(Icons.task_alt),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> tareas = [
  {'titulo': 'Comprar mercado', 'descripcion': 'Leche, pan, huevos, café'},
  {
    'titulo': 'Reunión de trabajo',
    'descripcion': 'Presentar avances del proyecto',
  },
  {'titulo': 'Ir al gimnasio', 'descripcion': 'Rutina de pierna'},
  {'titulo': 'Llamar al médico', 'descripcion': 'Agendar cita general'},
  {'titulo': 'Pagar facturas', 'descripcion': 'Luz, agua e internet'},
  {
    'titulo': 'Estudiar Flutter',
    'descripcion': 'Terminar el módulo de ListViews',
  },
];
