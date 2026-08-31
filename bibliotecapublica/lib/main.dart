import 'package:flutter/material.dart';

void main() {
  runApp(const BibliotecaPublica());
}

class BibliotecaPublica extends StatelessWidget {
  const BibliotecaPublica({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca Publica',
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
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Calidad a su servicio'),
      ),
      drawer: Drawer(
        // Se usa ListView en vez de Column para permitir scroll y evitar desbordamientos
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            ListTile(
              tileColor: Colors.blue,
              textColor: Colors.white,
              title: Text('Calidad a su servicio'),
            ),
            Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/1/1d/CV_logo.png',
              ),
            ),
            ListTile(
              title: Text('Catálogo de libros'),
              leading: Icon(Icons.book_sharp),
            ),
            ListTile(
              title: Text('Reserva de salas'),
              leading: Icon(Icons.timer_outlined),
            ),
            ListTile(
              title: Text('Mis préstamos y multas'),
              leading: Icon(Icons.payment),
            ),
            ListTile(
              title: Text('Eventos y actividades'),
              leading: Icon(Icons.volume_up),
            ),
            ListTile(
              title: Text('Búsqueda Avanzada'),
              leading: Icon(Icons.search),
            ),
            ListTile(
              title: Text('Ayuda y contacto'),
              leading: Icon(Icons.help),
            ),
          ],
        ),
      ),
      body: ListView(
        children: const [
          Image(
            height: 300,
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/1/1d/CV_logo.png',
            ),
          ),
          ListTile(
            title: Text('Dirección de Envío'),
            leading: Icon(Icons.location_on),
            subtitle: Text('Dirección de Envío'),
          ),
          ListTile(
            title: Text('Compras'),
            leading: Icon(Icons.shopping_bag_rounded),
            subtitle: Text('Mira el estado de tus compras'),
          ),
          ListTile(
            title: Text('Búsqueda'),
            leading: Icon(Icons.search),
            subtitle: Text('Busca el libro que requieras'),
          ),
          Card(
            margin: EdgeInsets.all(30.0),
            child: Image(
              height: 300,
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/1/1d/CV_logo.png',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {
          print('Seleccionaste Home');
        },
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
          NavigationDestination(
            icon: Icon(Icons.payments_outlined),
            label: 'Pagos',
          ),
          NavigationDestination(
            icon: Icon(Icons.smartphone),
            label: 'Contactos',
          ),
        ],
      ),
    );
  }
}
