import 'package:flutter/material.dart';

class PortalMedico extends StatefulWidget {
  const PortalMedico({super.key});

  @override
  State<PortalMedico> createState() => _PortalMedicoState();
}

class _PortalMedicoState extends State<PortalMedico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.9,
          ),
          'Portal Medico',
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: menuPortalMedico.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
              menuPortalMedico[index]['titulo'],
            ),
            subtitle: Text(menuPortalMedico[index]['subtitulo']),
            trailing: Icon(Icons.arrow_circle_right_rounded),
            leading: Icon(menuPortalMedico[index]['icono']),
          );
        },
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////

List<Map<String, dynamic>> menuPortalMedico = [
  {
    'idOpcion': 1,
    'titulo': 'Agendar Cita Médica',
    'subtitulo': 'General, especializada y psicología',
    'icono': Icons.calendar_month,
    'ruta': '/agendar-cita',
  },
  {
    'idOpcion': 2,
    'titulo': 'Mis Citas Programadas',
    'subtitulo': 'Consulta, reagenda o cancela tus citas',
    'icono': Icons.event_available,
    'ruta': '/mis-citas',
  },
  {
    'idOpcion': 3,
    'titulo': 'Historia Clínica',
    'subtitulo': 'Diagnósticos, evoluciones y antecedentes',
    'icono': Icons.folder_shared,
    'ruta': '/historia-clinica',
  },
  {
    'idOpcion': 4,
    'titulo': 'Resultados de Laboratorio',
    'subtitulo': 'Exámenes de sangre, imágenes y biopsias',
    'icono': Icons.science,
    'ruta': '/laboratorio',
  },
  {
    'idOpcion': 5,
    'titulo': 'Fórmulas y Medicamentos',
    'subtitulo': 'Recetas activas y entrega a domicilio',
    'icono': Icons.medication,
    'ruta': '/medicamentos',
  },
  {
    'idOpcion': 6,
    'titulo': 'Telemedicina',
    'subtitulo': 'Sala de espera para consulta virtual',
    'icono': Icons.video_call,
    'ruta': '/telemedicina',
  },
  {
    'idOpcion': 7,
    'titulo': 'Autorizaciones y Órdenes',
    'subtitulo': 'Estado de trámites y solicitudes',
    'icono': Icons.assignment_turned_in,
    'ruta': '/autorizaciones',
  },
  {
    'idOpcion': 8,
    'titulo': 'Directorio Médico',
    'subtitulo': 'Encuentra especialistas y consultorios',
    'icono': Icons.badge,
    'ruta': '/directorio',
  },
  {
    'idOpcion': 9,
    'titulo': 'Pagos y Facturación',
    'subtitulo': 'Copagos, certificados y recibos',
    'icono': Icons.receipt_long,
    'ruta': '/pagos',
  },
  {
    'idOpcion': 10,
    'titulo': 'Líneas de Urgencia',
    'subtitulo': 'Centros asistenciales y ambulancias',
    'icono': Icons.emergency,
    'ruta': '/urgencias',
  },
];
