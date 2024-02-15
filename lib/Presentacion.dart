//nombre: Felix Alejandro Camilo Javier
//matricula: 2021-1016

import 'package:flutter/material.dart';
import 'TablaMultiplicar.dart';
import 'AnalisisNumeros.dart';

class Presentacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Presentacion")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/FotoApp.jpg'),
            radius: 50,
          ),
          SizedBox(height: 20),
          Text('Felix Alejandro Camilo Javier',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TablaMultiplicar()),
                );
              },
              icon: Icon(Icons.calculate),
              label: Text('Tabla de Multiplicar')),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnalisisNumeros()),
                );
              },
              icon: Icon(Icons.analytics),
              label: Text('Analisis de Numeros')),
        ],
      )),
    );
  }
}
