import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
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
            Text('Suma de numeros'),
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
                  fontSize: 16,
                  fontWeight: FontWeight(600),
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Primer numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),

                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
