import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';
import 'package:interfaz_final/views/detalleVehiculo.dart';
import 'package:interfaz_final/views/menuDrawer.dart';

class MenuPrincipal extends StatelessWidget {
  final List<Map<String, dynamic>> autos;

  MenuPrincipal({super.key, required this.autos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      drawer: MenuDrawerPerfil(),
      appBar: AppBar(
        title: const Text('Alquiler de Vehículos'),
        backgroundColor: AppColors.encabezado,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: AppColors.texto),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: AppColors.encabezado),
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
            Expanded(
              child: autos.isEmpty
                  ? const Center(child: Text('No hay vehículos para mostrar'))
                  : ListView.builder(
                      itemCount: autos.length,
                      itemBuilder: (context, index) {
                        final auto = autos[index];
                        return ListTile(
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
                            style: TextStyle(
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
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.boton,
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
