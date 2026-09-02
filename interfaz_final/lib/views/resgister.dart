import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Widget buildTextField({
    required String label,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      style: TextStyle(color: AppColors.texto),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.campos,
        labelText: label,
        labelStyle: TextStyle(color: AppColors.texto),
        prefixIcon: Icon(icon, color: AppColors.encabezado),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(Icons.person_add, size: 80, color: AppColors.encabezado),
            SizedBox(height: 16),
            Text(
              "Empecemos",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.encabezado,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Crear una nueva cuenta',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.texto.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 30),
            buildTextField(label: "Nombre completo", icon: Icons.person),
            SizedBox(height: 16),
            buildTextField(label: "Correo electrónico", icon: Icons.email),
            SizedBox(height: 16),
            buildTextField(label: "Numero de licencia", icon: Icons.badge),
            SizedBox(height: 16),
            buildTextField(
              label: "Contraseña",
              icon: Icons.lock,
              obscure: true,
            ),
            SizedBox(height: 16),
            buildTextField(
              label: "Confirmar contraseña",
              icon: Icons.lock,
              obscure: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.boton,
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Registrarse",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿Ya tienes una cuenta?',
                  style: TextStyle(color: AppColors.texto),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
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
