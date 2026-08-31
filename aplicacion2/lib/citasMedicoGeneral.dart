import 'package:flutter/material.dart';

class Citasmedicogeneral extends StatefulWidget {
  const Citasmedicogeneral({super.key});

  @override
  _CitasmedicogeneralState createState() => _CitasmedicogeneralState();
}

class _CitasmedicogeneralState extends State<Citasmedicogeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Medico General'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: medicoGeneral.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(medicoGeneral[index]['nombreMedico']),
            subtitle: Text(medicoGeneral[index]['fechaCita']),
            trailing: Text(medicoGeneral[index]['horaCita']),
            leading: Icon(Icons.calendar_month),
          );
        },
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////

List<Map<String, dynamic>> medicoGeneral = [
  {
    'idCita': 1,
    'nombreMedico': 'Dra. María González',
    'fechaCita': '2026-09-01',
    'horaCita': '08:00 AM',
    'lugarCita': 'Clínica San José',
  },
  {
    'idCita': 2,
    'nombreMedico': 'Dr. Carlos Rodríguez',
    'fechaCita': '2026-09-02',
    'horaCita': '09:30 AM',
    'lugarCita': 'Hospital Universitario',
  },
  {
    'idCita': 3,
    'nombreMedico': 'Dra. Laura Martínez',
    'fechaCita': '2026-09-03',
    'horaCita': '10:00 AM',
    'lugarCita': 'Centro Médico del Norte',
  },
  {
    'idCita': 4,
    'nombreMedico': 'Dr. Andrés López',
    'fechaCita': '2026-09-04',
    'horaCita': '11:00 AM',
    'lugarCita': 'Clínica La Esperanza',
  },
  {
    'idCita': 5,
    'nombreMedico': 'Dra. Natalia Pérez',
    'fechaCita': '2026-09-05',
    'horaCita': '02:00 PM',
    'lugarCita': 'Hospital San Rafael',
  },
  {
    'idCita': 6,
    'nombreMedico': 'Dr. Juan Torres',
    'fechaCita': '2026-09-08',
    'horaCita': '03:30 PM',
    'lugarCita': 'Centro Médico Familiar',
  },
  {
    'idCita': 7,
    'nombreMedico': 'Dra. Camila Ramírez',
    'fechaCita': '2026-09-09',
    'horaCita': '08:30 AM',
    'lugarCita': 'Clínica Santa María',
  },
  {
    'idCita': 8,
    'nombreMedico': 'Dr. Felipe Herrera',
    'fechaCita': '2026-09-10',
    'horaCita': '10:30 AM',
    'lugarCita': 'Hospital Central',
  },
  {
    'idCita': 9,
    'nombreMedico': 'Dra. Valentina Castro',
    'fechaCita': '2026-09-11',
    'horaCita': '01:00 PM',
    'lugarCita': 'Clínica Los Andes',
  },
  {
    'idCita': 10,
    'nombreMedico': 'Dr. Sebastián Moreno',
    'fechaCita': '2026-09-12',
    'horaCita': '04:00 PM',
    'lugarCita': 'Centro de Especialidades Médicas',
  },
];
