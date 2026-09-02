import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';
import 'package:interfaz_final/views/menuPrincipal.dart';

class MedioPagoScreen extends StatefulWidget {
  const MedioPagoScreen({super.key});

  @override
  State<MedioPagoScreen> createState() => _MedioPagoScreenState();
}

class _MedioPagoScreenState extends State<MedioPagoScreen> {
  String _metodoSeleccionado = 'tarjeta';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      appBar: AppBar(
        title: const Text('Método de Pago'),
        backgroundColor: AppColors.encabezado,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selecciona tu método de pago',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.texto,
                ),
              ),
              const SizedBox(height: 16),

              // Opciones de método de pago
              Container(
                decoration: BoxDecoration(
                  color: AppColors.campos,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    RadioListTile<String>(
                      title: const Row(
                        children: [
                          Icon(Icons.credit_card, color: AppColors.encabezado),
                          SizedBox(width: 10),
                          Text('Tarjeta de Crédito / Débito'),
                        ],
                      ),
                      value: 'tarjeta',
                      groupValue: _metodoSeleccionado,
                      activeColor: AppColors.boton,
                      onChanged: (value) {
                        setState(() {
                          _metodoSeleccionado = value!;
                        });
                      },
                    ),
                    const Divider(height: 1),
                    RadioListTile<String>(
                      title: const Row(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: AppColors.encabezado,
                          ),
                          SizedBox(width: 10),
                          Text('Nequi / Daviplata'),
                        ],
                      ),
                      value: 'nequi',
                      groupValue: _metodoSeleccionado,
                      activeColor: AppColors.boton,
                      onChanged: (value) {
                        setState(() {
                          _metodoSeleccionado = value!;
                        });
                      },
                    ),
                    const Divider(height: 1),
                    RadioListTile<String>(
                      title: const Row(
                        children: [
                          Icon(
                            Icons.account_balance,
                            color: AppColors.encabezado,
                          ),
                          SizedBox(width: 10),
                          Text('Transferencia bancaria (PSE)'),
                        ],
                      ),
                      value: 'pse',
                      groupValue: _metodoSeleccionado,
                      activeColor: AppColors.boton,
                      onChanged: (value) {
                        setState(() {
                          _metodoSeleccionado = value!;
                        });
                      },
                    ),
                    const Divider(height: 1),
                    RadioListTile<String>(
                      title: const Row(
                        children: [
                          Icon(Icons.attach_money, color: AppColors.encabezado),
                          SizedBox(width: 10),
                          Text('Efectivo en punto de pago'),
                        ],
                      ),
                      value: 'efectivo',
                      groupValue: _metodoSeleccionado,
                      activeColor: AppColors.boton,
                      onChanged: (value) {
                        setState(() {
                          _metodoSeleccionado = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Formularios dinámicos según selección
              if (_metodoSeleccionado == 'tarjeta') ...[
                const Text(
                  'Datos de la tarjeta',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.texto,
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: _inputDecoration(
                    'Nombre del titular',
                    Icons.person,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: _inputDecoration(
                    'Número de tarjeta',
                    Icons.credit_card,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: _inputDecoration(
                          'MM/AA',
                          Icons.calendar_today,
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'Campo requerido'
                            : null,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: _inputDecoration('CVV', Icons.lock),
                        validator: (value) => value == null || value.isEmpty
                            ? 'Campo requerido'
                            : null,
                      ),
                    ),
                  ],
                ),
              ] else if (_metodoSeleccionado == 'nequi') ...[
                const Text(
                  'Número de teléfono Nequi/Daviplata',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.texto,
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: _inputDecoration(
                    'Número de celular',
                    Icons.phone,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
              ] else if (_metodoSeleccionado == 'pse') ...[
                const Text(
                  'Información de la cuenta',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.texto,
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: _inputDecoration('Banco', Icons.account_balance),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: _inputDecoration(
                    'Documento de identidad',
                    Icons.badge,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
              ] else ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.campos,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Podrás realizar el pago en efectivo directamente en la oficina al recoger el vehículo o en puntos autorizados.',
                    style: TextStyle(color: AppColors.texto, fontSize: 15),
                  ),
                ),
              ],

              const SizedBox(height: 30),

              // Botón de confirmar pago
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() ||
                      _metodoSeleccionado == 'efectivo') {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('¡Reserva Confirmada!'),
                        content: const Text(
                          'Tu solicitud de alquiler ha sido procesada con éxito. '
                          'Revisa los detalles en tu perfil.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Cierra diálogo
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuPrincipal(),
                                ),
                                (route) => false,
                              );
                            },
                            child: const Text('Aceptar'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.boton,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Confirmar y Pagar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      filled: true,
      fillColor: AppColors.campos,
      labelText: label,
      labelStyle: const TextStyle(color: AppColors.texto),
      prefixIcon: Icon(icon, color: AppColors.encabezado),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
