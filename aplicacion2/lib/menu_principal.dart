import 'package:aplicacion2/citasMedicoEspecializado.dart';
import 'package:aplicacion2/citasMedicoGeneral.dart';
import 'package:aplicacion2/citasPsicologia.dart';
import 'package:aplicacion2/portalMedico.dart';
import 'package:flutter/material.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Image(
              image: NetworkImage('https://picsum.photos/330/200'),
              height: 70,
              width: 70,
            ),
            Card(
              child: TextButton.icon(
                onPressed: () {
                  print('Seleccionaste algo');
                },
                icon: Icon(Icons.home, color: Colors.blue),
                label: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Inicio', style: TextStyle(color: Colors.blue)),
                ),
              ),
            ),
            Card(
              child: TextButton.icon(
                onPressed: () {
                  print('Seleccionaste algo');
                },
                icon: Icon(Icons.perm_identity, color: Colors.blue),
                label: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Datos Personales',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton.icon(
                onPressed: () {
                  print('Seleccionaste algo');
                },
                icon: Icon(Icons.payment, color: Colors.blue),
                label: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Metodos de pago',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Inicio'),
            subtitle: Text('Portal Medico'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.accessible_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PortalMedico()),
              );
            },
          ),
          ListTile(
            title: Text('Medicina Genereal'),
            subtitle: Text('Citas Medicas'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.accessible_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Citasmedicogeneral()),
              );
            },
          ),
          ListTile(
            title: Text('Medicina Especializada'),
            subtitle: Text('Citas Medicas'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.accessible_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CitasMedicoEspecializado(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Psicologia'),
            subtitle: Text('Citas Medicas'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.accessible_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Citaspsicologia()),
              );
            },
          ),
          Image(image: AssetImage('assets/images/Medico.jpg')),
        ],
      ),
    );
  }
}
