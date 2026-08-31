import 'package:flutter/material.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Prototype',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {
              print('Seleccionaste la camara.');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {
              print('Seleccionaste el Menu.');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey,
            ),
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(8),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.white),
                SizedBox(width: 10),
                Text('Buscar...', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle),
                  title: const Text('Mamá'),
                  subtitle: const Text('Hola ma, ya estoy en el SENA...'),
                  trailing: Text('04:20 pm'),
                ),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle),
                  title: const Text('Alejandro'),
                  subtitle: const Text('Como vamos?'),
                  trailing: Text('03:57 pm'),
                ),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle),
                  title: const Text('Tia Liliana'),
                  subtitle: const Text('Bueno, Gracias'),
                  trailing: Text('03:15 pm'),
                ),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle),
                  title: const Text('+57 3143557292'),
                  subtitle: const Text('?'),
                  trailing: Text('11:17 am'),
                ),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle),
                  title: const Text('Amanda'),
                  subtitle: const Text('Todo estaba bien.'),
                  trailing: Text('11:20 am'),
                ),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle),
                  title: const Text('SENA ADSO 3176243'),
                  subtitle: const Text('Guia Flutter.pdf'),
                  trailing: Text('10:10 am'),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            backgroundColor: Colors.purple,
            onPressed: () {
              print('Seleccionaste nueva IA de Meta.');
            },
            child: const Icon(
              Icons.blur_circular_outlined,
              color: Colors.white,
            ),
          ),

          //Margen entre botones flotantes...
          const SizedBox(height: 16),

          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              print('Seleccionaste nueva conversación.');
            },
            child: const Icon(Icons.message, color: Colors.white),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Novedades'),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Comunidades',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Llamadas'),
        ],
      ),
    );
  }
}
