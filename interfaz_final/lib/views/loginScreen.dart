import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';
import 'package:interfaz_final/views/menuPrincipal.dart';
import 'package:interfaz_final/views/resgister.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(Icons.person_pin, size: 80, color: AppColors.encabezado),
            SizedBox(height: 16),
            Text(
              "Bienvenido",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.encabezado,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Inicia sesión para continuar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.texto.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 90),
            TextField(
              style: TextStyle(color: AppColors.texto),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.campos,
                labelText: "Correo electronico",
                labelStyle: TextStyle(color: AppColors.texto),
                prefixIcon: Icon(Icons.email, color: AppColors.encabezado),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              style: TextStyle(color: AppColors.texto),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.campos,
                labelText: "Contraseña",
                labelStyle: TextStyle(color: AppColors.texto),
                prefixIcon: Icon(Icons.password, color: AppColors.encabezado),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuPrincipal(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.boton,
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text(
                "iniciar sesion",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(color: AppColors.texto),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Recuperar',
                    style: TextStyle(
                      color: AppColors.encabezado,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿No tienes una cuenta?',
                  style: TextStyle(color: AppColors.texto),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Registrate',
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
