import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';
import 'package:interfaz_final/widgets/custom_text_file.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Icon(Icons.person_add, size: 80, color: AppColors.encabezado),
            const SizedBox(height: 16),
            const Text(
              'Empecemos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.encabezado,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Crear una nueva cuenta',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.texto.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 30),

            // Campos de texto reutilizando el widget custom
            buildTextField(label: 'Nombre completo', icon: Icons.person),
            const SizedBox(height: 16),
            buildTextField(label: 'Correo electrónico', icon: Icons.email),
            const SizedBox(height: 16),
            buildTextField(label: 'Numero de licencia', icon: Icons.badge),
            const SizedBox(height: 16),
            buildTextField(
              label: 'Contraseña',
              icon: Icons.lock,
              obscure: true,
            ),
            const SizedBox(height: 16),
            buildTextField(
              label: 'Confirmar contraseña',
              icon: Icons.lock_outline,
              obscure: true,
            ),
            const SizedBox(height: 24),

            // Botón de registro
            ElevatedButton(
              onPressed: () {
                // Acción al registrarse: volver al login o ir al menú
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.boton,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Enlace de regreso al login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '¿Ya tienes una cuenta?',
                  style: TextStyle(color: AppColors.texto),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: AppColors.encabezado,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
