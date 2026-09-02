import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';
import 'package:interfaz_final/views/detalleVehiculo.dart';
import 'package:interfaz_final/views/menuDrawer.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  int _selectedIndex = 0;

  // Lista con 15 vehículos requerida por la guía
  final List<Map<String, dynamic>> listaDeAutos = [
    {
      'imageUrl': 'https://picsum.photos/330/200?random=1',
      'marca': 'Toyota',
      'modelo': 'Corolla',
      'anio': '2022',
      'disponibilidad': 1,
      'precio': '99.99',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=2',
      'marca': 'Nissan',
      'modelo': 'Sentra',
      'anio': '2021',
      'disponibilidad': 1,
      'precio': '89.99',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=3',
      'marca': 'Ford',
      'modelo': 'Mustang',
      'anio': '2023',
      'disponibilidad': 0,
      'precio': '199.99',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=4',
      'marca': 'Chevrolet',
      'modelo': 'Camaro',
      'anio': '2020',
      'disponibilidad': 1,
      'precio': '150.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=5',
      'marca': 'Mazda',
      'modelo': 'CX-5',
      'anio': '2023',
      'disponibilidad': 1,
      'precio': '110.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=6',
      'marca': 'Hyundai',
      'modelo': 'Tucson',
      'anio': '2022',
      'disponibilidad': 0,
      'precio': '105.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=7',
      'marca': 'Kia',
      'modelo': 'Sportage',
      'anio': '2021',
      'disponibilidad': 1,
      'precio': '95.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=8',
      'marca': 'Volkswagen',
      'modelo': 'Jetta',
      'anio': '2022',
      'disponibilidad': 1,
      'precio': '100.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=9',
      'marca': 'Honda',
      'modelo': 'Civic',
      'anio': '2023',
      'disponibilidad': 1,
      'precio': '115.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=10',
      'marca': 'BMW',
      'modelo': 'Serie 3',
      'anio': '2024',
      'disponibilidad': 0,
      'precio': '220.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=11',
      'marca': 'Mercedes-Benz',
      'modelo': 'Clase C',
      'anio': '2023',
      'disponibilidad': 1,
      'precio': '230.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=12',
      'marca': 'Audi',
      'modelo': 'A4',
      'anio': '2022',
      'disponibilidad': 1,
      'precio': '210.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=13',
      'marca': 'Renault',
      'modelo': 'Duster',
      'anio': '2021',
      'disponibilidad': 1,
      'precio': '80.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=14',
      'marca': 'Jeep',
      'modelo': 'Renegade',
      'anio': '2022',
      'disponibilidad': 0,
      'precio': '130.00',
    },
    {
      'imageUrl': 'https://picsum.photos/330/200?random=15',
      'marca': 'Suzuki',
      'modelo': 'Vitara',
      'anio': '2023',
      'disponibilidad': 1,
      'precio': '90.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      drawer: const MenuDrawerPerfil(),
      appBar: AppBar(
        title: const Text('Alquiler de Vehículos'),
        backgroundColor: AppColors.encabezado,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Barra de búsqueda simulada
            TextField(
              style: const TextStyle(color: AppColors.texto),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.encabezado,
                ),
                hintText: 'Buscar vehículo',
                hintStyle: TextStyle(color: AppColors.texto.withOpacity(0.7)),
                filled: true,
                fillColor: AppColors.campos,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
              readOnly: true,
            ),
            const SizedBox(height: 16.0),

            // Lista dinámica de vehículos
            Expanded(
              child: listaDeAutos.isEmpty
                  ? const Center(child: Text('No hay vehículos para mostrar'))
                  : ListView.builder(
                      itemCount: listaDeAutos.length,
                      itemBuilder: (context, index) {
                        final auto = listaDeAutos[index];
                        return Card(
                          margin: const EdgeInsets.only(bottom: 10),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                auto['imageUrl'].toString(),
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.network(
                                    'https://picsum.photos/330/200',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                            ),
                            title: Text(
                              '${auto['marca']} ${auto['modelo']}',
                              style: const TextStyle(
                                color: AppColors.texto,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text(
                              'Año: ${auto['anio']}\nPrecio: \$${auto['precio']}/día',
                              style: TextStyle(
                                color: AppColors.texto.withOpacity(0.8),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.boton,
                              size: 18,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetalleVehiculoScreen(
                                    imageUrl: auto['imageUrl'],
                                    marca: auto['marca'],
                                    modelo: auto['modelo'],
                                    anio: auto['anio'],
                                    disponibilidad: auto['disponibilidad'],
                                    precio: auto['precio'],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.boton,
        unselectedItemColor: AppColors.texto.withOpacity(0.6),
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Alquiler',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
        ],
      ),
    );
  }
}
