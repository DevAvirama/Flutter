import 'package:agenda_personal/calendario.dart';
import 'package:agenda_personal/contactos_personales.dart';
import 'package:agenda_personal/menu_opciones.dart';
import 'package:agenda_personal/mis_tareas.dart';
import 'package:agenda_personal/registro_usuarios.dart';
import 'package:agenda_personal/resta.dart';
import 'package:agenda_personal/suma.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AgendaPersonal());
}

class AgendaPersonal extends StatefulWidget {
  const AgendaPersonal({super.key});

  @override
  State<AgendaPersonal> createState() => _AgendaPersonalState();
}

class _AgendaPersonalState extends State<AgendaPersonal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agenda Personal',
      home: MenuOpciones(),
      routes: {
        '/resta':(context) => Resta(),
        '/calendario':(context) => Calendario(),
        '/contactos_personales':(context) => ContactosPersonales(),
        '/menu_opciones':(context) => MenuOpciones(),
        '/mis_tareas':(context) => MisTareas(),
        '/suma':(context) => Suma(),
        '/registro_usuarios': (context) => RegistroUsuarios(),
        '/login_usuarios': (context) => RegistroUsuarios(),
      },
    );
  }
}
