import 'package:agenda_personal/login_usuario.dart';
import 'package:agenda_personal/registro_usuarios.dart';
import 'package:agenda_personal/resta.dart';
import 'package:agenda_personal/suma.dart';
import 'package:flutter/material.dart';
import 'package:agenda_personal/contactos_personales.dart';
import 'package:agenda_personal/mis_tareas.dart';
import 'package:agenda_personal/calendario.dart';

class MenuOpciones extends StatefulWidget {
  const MenuOpciones({super.key});

  @override
  State<MenuOpciones> createState() => _MenuOpcionesState();
}

class _MenuOpcionesState extends State<MenuOpciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Personal'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Image(
              image: AssetImage('assets/images/Django.png'),
              height: 70,
              width: 70,
            ),
            Card(
              child: TextButton.icon(
                onPressed: () {
                  print('Seleccionaste Inicio');
                },
                icon: Icon(Icons.home, color: Colors.teal),
                label: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Inicio', style: TextStyle(color: Colors.teal)),
                ),
              ),
            ),
            Card(
              child: TextButton.icon(
                onPressed: () {
                  print('Seleccionaste Perfil');
                },
                icon: Icon(Icons.person, color: Colors.teal),
                label: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Perfil', style: TextStyle(color: Colors.teal)),
                ),
              ),
            ),
            Card(
              child: TextButton.icon(
                onPressed: () {
                  print('Seleccionaste Configuración');
                },
                icon: Icon(Icons.settings, color: Colors.teal),
                label: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Configuración',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image(image: AssetImage('assets/images/Django.png')),
          ListTile(
            title: Text('Contactos Personales'),
            subtitle: Text('Gestionar contactos'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.contacts),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactosPersonales()),
              );
            },
          ),
          ListTile(
            title: Text('Mis Tareas'),
            subtitle: Text('Lista de tareas pendientes'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.task),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MisTareas()),
              );
            },
          ),
          ListTile(
            title: Text('Calendario'),
            subtitle: Text('Eventos y recordatorios'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.calendar_month),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calendario()),
              );
            },
          ),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('Suma'),
              subtitle: Text('Suma de numeros'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_right_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Suma()),
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('Resta'),
              subtitle: Text('Resta de numeros'),
              leading: Icon(Icons.minimize),
              trailing: Icon(Icons.arrow_circle_right_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Resta()),
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('Resgistro de Usuarios'),
              subtitle: Text('Registrate en la aplicacion'),
              leading: Icon(Icons.person_add_alt_1_rounded),
              trailing: Icon(Icons.arrow_circle_right_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistroUsuarios()),
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('LogIn'),
              subtitle: Text('Inicia Sesion'),
              leading: Icon(Icons.person_pin),
              trailing: Icon(Icons.arrow_circle_right_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginUsuario()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
