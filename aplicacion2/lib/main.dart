import 'package:aplicacion2/citasMedicoGeneral.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion2/menu_principal.dart';

void main(List<String> args) {
  runApp(const Aplicacion2());
}

class Aplicacion2 extends StatefulWidget {
  const Aplicacion2({super.key});

  @override
  State<Aplicacion2> createState() => _Aplicacion2State();
}

class _Aplicacion2State extends State<Aplicacion2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hospital San Jose de Popayán',
      home: const MenuPrincipal(),
      routes: {'/citasmedicinageneral': (context) => Citasmedicogeneral()},
    );
  }
}
