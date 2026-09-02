import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistroUsuarios extends StatefulWidget {
  const RegistroUsuarios({super.key});

  @override
  State<RegistroUsuarios> createState() => _RegistroUsuariosState();
}

class _RegistroUsuariosState extends State<RegistroUsuarios> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();

  /// Metodo para guerdar datos de correo y contraseña
  Future<void> _guardarDatosUsuario(String correo, String contrasena) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('userEmail', correo);
    prefs.setString('userPassword', contrasena);
  }

  void _registrarUsuario (){
    _guardarDatosUsuario(_emailController.text, _contrasenaController.text);
    print('Usuario guardado Exitosamente!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage('assets/images/Django.png'),
              fit: BoxFit.cover,
              height: 16,
            ),
            SizedBox(height: 8),
            Text('    Resgistrar Usuario'),
          ],
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: NetworkImage('https://picsum.photos/330/200'),
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nombres',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Digite su nombre completo';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Correo Electronico Personal',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Digite su correo electronico';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Documento',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Digite su numero de identificacion';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _contrasenaController,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Digite su contraseña';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Confirmar contraseña',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Digite su contraseña';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        _registrarUsuario();
                      },
                      child: Text('Registrar Usuario')
                  )
                ],
              ) ,
          ),
        ),
      ),
    );
  }
}
