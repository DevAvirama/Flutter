import 'package:flutter/material.dart';

class Citaspsicologia extends StatefulWidget {
  const Citaspsicologia({super.key});

  @override
  State<Citaspsicologia> createState() => _CitaspsicologiaState();
}

class _CitaspsicologiaState extends State<Citaspsicologia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Psicologia'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: citasPsicologia.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(citasPsicologia[index]['nombreProfesional']),
            subtitle: Text(citasPsicologia[index]['fechaCita']),
            trailing: Text(citasPsicologia[index]['horaCita']),
            leading: Icon(Icons.calendar_month),
          );
        },
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////

List<Map<String, dynamic>> citasPsicologia = [
  {
    'idCita': 1,
    'nombreProfesional': 'Dra. Carolina Méndez',
    'enfoque': 'Psicología Clínica y Cognitivo-Conductual',
    'fechaCita': '2026-09-01',
    'horaCita': '08:00 AM',
    'lugarCita': 'Centro de Bienestar Emocional - Consultorio 101',
  },
  {
    'idCita': 2,
    'nombreProfesional': 'Dr. Javier Rincón',
    'enfoque': 'Terapia de Pareja y Familiar',
    'fechaCita': '2026-09-02',
    'horaCita': '09:30 AM',
    'lugarCita': 'Clínica San José - Área de Salud Mental',
  },
  {
    'idCita': 3,
    'nombreProfesional': 'Dra. Isabela Cárdenas',
    'enfoque': 'Psicología Infantil y del Adolescente',
    'fechaCita': '2026-09-03',
    'horaCita': '10:45 AM',
    'lugarCita': 'Hospital Universitario - Módulo Psicológico',
  },
  {
    'idCita': 4,
    'nombreProfesional': 'Dr. Daniel Arango',
    'enfoque': 'Neuropsicología y Evaluación Cognitiva',
    'fechaCita': '2026-09-04',
    'horaCita': '11:15 AM',
    'lugarCita': 'Centro Médico del Norte - Consultorio 204',
  },
  {
    'idCita': 5,
    'nombreProfesional': 'Dra. Mariana Salazar',
    'enfoque': 'Manejo de Ansiedad y Depresión',
    'fechaCita': '2026-09-05',
    'horaCita': '02:00 PM',
    'lugarCita': 'Clínica La Esperanza - Sala Terapéutica A',
  },
  {
    'idCita': 6,
    'nombreProfesional': 'Dr. Santiago Ospina',
    'enfoque': 'Psicoterapia Humanista y Gestalt',
    'fechaCita': '2026-09-08',
    'horaCita': '03:30 PM',
    'lugarCita': 'Hospital San Rafael - Consultorio 12',
  },
  {
    'idCita': 7,
    'nombreProfesional': 'Dra. Gabriela Vega',
    'enfoque': 'Terapia de Aceptación y Compromiso (ACT)',
    'fechaCita': '2026-09-09',
    'horaCita': '08:15 AM',
    'lugarCita': 'Centro de Atención Psicosocial Integral',
  },
  {
    'idCita': 8,
    'nombreProfesional': 'Dr. Mateo Quintero',
    'enfoque': 'Psicología Organizacional y Orientación Vocacional',
    'fechaCita': '2026-09-10',
    'horaCita': '10:00 AM',
    'lugarCita': 'Clínica Santa María - Consultorio 302',
  },
  {
    'idCita': 9,
    'nombreProfesional': 'Dra. Andrea Londoño',
    'enfoque': 'Duelo y Trauma (EMDR)',
    'fechaCita': '2026-09-11',
    'horaCita': '01:45 PM',
    'lugarCita': 'Hospital Central - Pabellón de Psicoterapia',
  },
  {
    'idCita': 10,
    'nombreProfesional': 'Dr. Leonardo Duarte',
    'enfoque': 'Mindfulness y Regulación Emocional',
    'fechaCita': '2026-09-12',
    'horaCita': '04:30 PM',
    'lugarCita': 'Clínica Los Andes - Consultorio 108',
  },
];
