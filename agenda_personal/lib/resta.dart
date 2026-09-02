import 'package:flutter/material.dart';

class Resta extends StatefulWidget {
  const Resta({super.key});

  @override
  State<Resta> createState() => _RestaState();
}

class _RestaState extends State<Resta> {
  /// Lofica de la operacion ///
  /// Definimos las variables de los numeros///
  final TextEditingController _numero1 = TextEditingController();
  final TextEditingController _numero2 = TextEditingController();
  double resultado = 0.0;

  /// Definimos fucnion para calcular suma///

  void _calcularSuma(){
    double num1 = double.tryParse(_numero1.text) ?? 0.0;
    double num2 = double.tryParse(_numero1.text) ?? 0.0;

    setState(() {
      resultado = num1 - num2;
    });
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
            Text('    Resta de Numeros'),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Digite los numeros',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _numero1,
                decoration: InputDecoration(
                    labelText: 'Primer numero',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _numero2,
                decoration: InputDecoration(
                    labelText: 'Segundo numero',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50)
                ),
                onPressed: () {
                  _calcularSuma();
                },
                child: Text('Hacer resta',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  'Resultado: $resultado'
              )
            ],
          ),
        ),
      ),
    );
  }
}
