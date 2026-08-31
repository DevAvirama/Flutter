import 'package:flutter/material.dart';

class CitasMedicoEspecializado extends StatefulWidget {
  const CitasMedicoEspecializado({super.key});

  @override
  State<CitasMedicoEspecializado> createState() =>
      _CitasMedicoEspecializadoState();
}

class _CitasMedicoEspecializadoState extends State<CitasMedicoEspecializado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Medico Especializado'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: medicoEspecializado.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(medicoEspecializado[index]['nombreMedico']),
            subtitle: Text(medicoEspecializado[index]['fechaCita']),
            trailing: Text(medicoEspecializado[index]['horaCita']),
            leading: Icon(Icons.calendar_month),
          );
        },
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////

List<Map<String, dynamic>> medicoEspecializado = [
  {
    'idCita': 1,
    'nombreMedico': 'Dr. Alejandro Morales',
    'especialidad': 'Cardiología',
    'fechaCita': '2026-09-01',
    'horaCita': '08:00 AM',
    'lugarCita': 'Clínica San José - Consultorio 301',
  },
  {
    'idCita': 2,
    'nombreMedico': 'Dra. Patricia Gómez',
    'especialidad': 'Dermatología',
    'fechaCita': '2026-09-02',
    'horaCita': '09:15 AM',
    'lugarCita': 'Hospital Universitario - Torre Médica B',
  },
  {
    'idCita': 3,
    'nombreMedico': 'Dr. Mauricio Silva',
    'especialidad': 'Neurología',
    'fechaCita': '2026-09-03',
    'horaCita': '10:30 AM',
    'lugarCita': 'Centro Médico del Norte - Consultorio 104',
  },
  {
    'idCita': 4,
    'nombreMedico': 'Dra. Diana Castillo',
    'especialidad': 'Pediatría',
    'fechaCita': '2026-09-04',
    'horaCita': '11:00 AM',
    'lugarCita': 'Clínica La Esperanza - Pabellón Infantil',
  },
  {
    'idCita': 5,
    'nombreMedico': 'Dr. Ricardo Vargas',
    'especialidad': 'Traumatología y Ortopedia',
    'fechaCita': '2026-09-05',
    'horaCita': '02:30 PM',
    'lugarCita': 'Hospital San Rafael - Módulo 2',
  },
  {
    'idCita': 6,
    'nombreMedico': 'Dra. Elena Benítez',
    'especialidad': 'Oftalmología',
    'fechaCita': '2026-09-08',
    'horaCita': '03:45 PM',
    'lugarCita': 'Centro Oftalmológico Santa Lucía',
  },
  {
    'idCita': 7,
    'nombreMedico': 'Dr. Gabriel Mendoza',
    'especialidad': 'Gastroenterología',
    'fechaCita': '2026-09-09',
    'horaCita': '08:30 AM',
    'lugarCita': 'Clínica Santa María - Consultorio 205',
  },
  {
    'idCita': 8,
    'nombreMedico': 'Dra. Silvia Restrepo',
    'especialidad': 'Endocrinología',
    'fechaCita': '2026-09-10',
    'horaCita': '10:00 AM',
    'lugarCita': 'Hospital Central - Consulta Externa',
  },
  {
    'idCita': 9,
    'nombreMedico': 'Dr. Fernando Ruiz',
    'especialidad': 'Urología',
    'fechaCita': '2026-09-11',
    'horaCita': '01:30 PM',
    'lugarCita': 'Clínica Los Andes - Consultorio 410',
  },
  {
    'idCita': 10,
    'nombreMedico': 'Dra. Mónica Delgado',
    'especialidad': 'Ginecología y Obstetricia',
    'fechaCita': '2026-09-12',
    'horaCita': '04:15 PM',
    'lugarCita': 'Centro de Especialidades Médicas - Sala 5',
  },
];
