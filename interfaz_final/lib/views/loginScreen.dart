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
                    builder: (context) => MenuPrincipal(autos: listaDeAutos),
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
