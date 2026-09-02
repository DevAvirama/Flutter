import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginUsuario extends StatefulWidget {
  const LoginUsuario({super.key});

  @override
  State<LoginUsuario> createState() => _LoginUsuarioState();
}

class _LoginUsuarioState extends State<LoginUsuario> {
  final TextEditingController _emailController = TextEditingController();
  
  Future<void> _login()async{
    final prefs = await SharedPreferences.getInstance();
    String? savedEmail = prefs.getString('userEmail');
    if (savedEmail == _emailController.text.trim()){
      //Si el correo guardado conincide con el indicado, mostrar el mensaje.
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Bienvenido')));
    }else{
      //SI no coincide el correo muestra el mensaje
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Correo Incorrecto')));
    }
  }

  final Color encabezado = Color(0xFF60B5FF);
  final Color campos = Color(0xFFFFECDB);
  final Color boton = Color(0xFFFF9149);
  final Color texto = Color(0xFF222222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(Icons.person_pin, size:80, color: Colors.blueAccent ),
            SizedBox(height: 16),
            Text('Bienvenido',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: texto,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Iniciar Sesion para Continuar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: texto,
              ),
            ),
            SizedBox(height: 80),
            TextFormField(
              controller: _emailController,
              style: TextStyle(
                color: texto,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Correo Electronico',
                  labelStyle: TextStyle(color: texto),
                  prefixIcon: Icon(Icons.email, color: encabezado),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  )
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              obscureText: true, ///Ocultar el contenido.
              style: TextStyle(
                color: texto,
              ),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(color: texto),
                  prefixIcon: Icon(Icons.email, color: encabezado),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  )
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(onPressed: () {
              _login();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: boton,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),

            child: Text(
              'Iniciar Sesion',
              style: TextStyle(
                color: Colors.white,
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}
