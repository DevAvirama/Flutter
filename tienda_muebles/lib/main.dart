import 'package:flutter/material.dart';

void main() {
  runApp(const Tienda());
}

class Tienda extends StatelessWidget {
  const Tienda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda de muebles.',
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
        title: Text('Tienda de Muebles'),
        backgroundColor: Colors.brown[400],
        foregroundColor: Colors.black,
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                'https://st2.depositphotos.com/4217166/6697/v/450/depositphotos_66972661-stock-illustration-sofa-furniture-logo-for-your.jpg',
              ),
              height: 100,
              width: double.infinity,
            ),
            ListTile(
              title: Text('Inicio'),
              subtitle: Text('Portal para personas'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.archive),
              onTap: () {
                print('Seleccionaste Home.');
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                'https://static8.depositphotos.com/1422781/941/i/450/depositphotos_9413706-stock-illustration-cutout-furniture.jpg',
              ),
            ),

            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
            Text('Hola Mundo desde Dart.'),
          ],
        ),
      ),
    );
  }
}
