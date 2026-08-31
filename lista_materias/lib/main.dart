import 'package:flutter/material.dart';

void main() {
  runApp(const ListaMaterias());
}

class ListaMaterias extends StatelessWidget {
  const ListaMaterias({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Materias',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Materias 11°'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Image(
              image: NetworkImage(
                'https://st.depositphotos.com/2343527/4063/v/600/depositphotos_40636761-stock-illustration-children-and-the-sciences.jpg',
              ),
            ),
            ListTile(
              title: Text('Calculo'),
              subtitle: Text('Fundamentos del Calculo'),
              leading: Icon(Icons.book_rounded),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                print('Seleccionaste Calculo');
              },
            ),
            ListTile(
              title: Text('Quimica'),
              subtitle: Text('Fundamentos de la Quimica'),
              leading: Icon(Icons.science),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                print('Seleccionaste Quimica');
              },
            ),
            ListTile(
              title: Text('Filosofia'),
              subtitle: Text('Fundamentos de la Filosofias'),
              leading: Icon(Icons.bathroom_outlined),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                print('Seleccionaste Filosofia');
              },
            ),
            ListTile(
              title: Text('Ingles'),
              subtitle: Text('Fundamentos de Ingles'),
              leading: Icon(Icons.edit),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                print('Seleccionaste Ingles');
              },
            ),
            ListTile(
              title: Text('Actividad Fisica'),
              subtitle: Text('Ejercicios Basicos para mantenimiento.'),
              leading: Icon(Icons.run_circle_outlined),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                print('Seleccionaste Actividad Fisica');
              },
            ),
            ListTile(
              title: Text('Fisica'),
              subtitle: Text('Fundamentos del Movimiento Rectilineo Unifirme'),
              leading: Icon(Icons.signal_cellular_0_bar),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                print('Seleccionaste Fisica');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Calculo'),
            subtitle: Text('Lunes y martes'),
            trailing: Text('8am -10am'),
            leading: Icon(Icons.calculate),
            onTap: () {
              print('Seleccionaste Calculo');
            },
          ),
          ListTile(
            title: Text('Quimica'),
            subtitle: Text('Miercoles y jueves'),
            trailing: Text('10am -12am'),
            leading: Icon(Icons.science),
            onTap: () {
              print('Seleccionaste Quimica');
            },
          ),
          ListTile(
            title: Text('Filosofia'),
            subtitle: Text('Viernes'),
            trailing: Text('1pm -3pm'),
            leading: Icon(Icons.book),
            onTap: () {
              print('Seleccionaste Filosofia');
            },
          ),
          ListTile(
            title: Text('Ingles'),
            subtitle: Text('Lunes y Miercoles'),
            trailing: Text('12am -2pm'),
            leading: Icon(Icons.language),
            onTap: () {
              print('Seleccionaste Ingles');
            },
          ),
          ListTile(
            title: Text('Actividad Fisica'),
            subtitle: Text('Martes y Jueves'),
            trailing: Text('2pm -3pm'),
            leading: Icon(Icons.run_circle_outlined),
            onTap: () {
              print('Seleccionaste Actividad FIsica');
            },
          ),
          ListTile(
            title: Text('Fisica'),
            subtitle: Text('Viernes'),
            trailing: Text('10am -11am'),
            leading: Icon(Icons.model_training_sharp),
            onTap: () {
              print('Seleccionaste Fisica');
            },
          ),
        ],
      ),
    );
  }
}
