import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';
import 'package:interfaz_final/views/medioPago.dart';

class DetalleVehiculoScreen extends StatelessWidget {
  final String imageUrl;
  final String marca;
  final String modelo;
  final dynamic anio;
  final dynamic disponibilidad;
  final dynamic precio;

  const DetalleVehiculoScreen({
    super.key,
    required this.imageUrl,
    required this.marca,
    required this.modelo,
    required this.anio,
    required this.disponibilidad,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    // Verificamos si el vehículo está disponible (1 = Disponible, 0 = No disponible)
    final bool estaDisponible = disponibilidad == 1;

    return Scaffold(
      backgroundColor: AppColors.fondo,
      appBar: AppBar(
        title: Text('$marca $modelo'),
        backgroundColor: AppColors.encabezado,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.campos,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl.toString(),
                    height: 160,
                    width: 260,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.network(
                        'https://picsum.photos/330/200',
                        height: 160,
                        width: 260,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '$marca $modelo',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.texto,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Año: $anio',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.texto.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 8),
                Chip(
                  avatar: Icon(
                    estaDisponible ? Icons.check_circle : Icons.cancel,
                    color: Colors.white,
                    size: 18,
                  ),
                  label: Text(
                    estaDisponible ? 'Disponible' : 'No disponible',
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: estaDisponible ? Colors.green : Colors.grey,
                ),
                const SizedBox(height: 12),
                Text(
                  'Precio: \$$precio/día',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.boton,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.boton,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.directions_car),
                  label: const Text(
                    'Solicitar alquiler',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: estaDisponible
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MedioPagoScreen(),
                            ),
                          );
                        }
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
