import 'package:flutter/material.dart';
import 'package:interfaz_final/theme/app_colors.dart';

class MenuDrawerPerfil extends StatefulWidget {
  const MenuDrawerPerfil({super.key});

  @override
  State<MenuDrawerPerfil> createState() => _MenuDrawerPerfilState();
}

class _MenuDrawerPerfilState extends State<MenuDrawerPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: AppColors.encabezado,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: const NetworkImage(
                'https://picsum.photos/330/200',
                scale: 1.0,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Column(
              children: const [
                Text(
                  "Nombre de Usuario",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "correo@ejemplo.com",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          ListTile(
            leading: const Icon(Icons.badge, color: AppColors.encabezado),
            title: const Text("Número de licencia"),
            subtitle: const Text("123456789"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock, color: AppColors.encabezado),
            title: const Text("Cambiar contraseña"),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.search_rounded, color: AppColors.boton),
            title: const Text("Revisar Alquileres"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
