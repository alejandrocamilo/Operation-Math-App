import 'package:flutter/material.dart';
import 'AnalisisNumeros.dart';

class AnalisisNumerosGenerador extends State<AnalisisNumeros> {
  TextEditingController cajaDeTexto1 = TextEditingController();
  TextEditingController cajaDeTexto2 = TextEditingController();
  TextEditingController cajaDeTexto3 = TextEditingController();

  int mayor = 0;
  int menor = 0;
  double promedio = 0.0;

  void analizarNumeros() {
    int num1 = int.tryParse(cajaDeTexto1.text) ?? 0;
    int num2 = int.tryParse(cajaDeTexto2.text) ?? 0;
    int num3 = int.tryParse(cajaDeTexto3.text) ?? 0;

    setState(() {
      mayor = num1;
      if (num2 > mayor) mayor = num2;
      if (num3 > mayor) mayor = num3;

      menor = num1;
      if (num2 < menor) menor = num2;
      if (num3 < menor) menor = num3;

      promedio = (num1 + num2 + num3) / 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analisis de numeros"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: cajaDeTexto1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Ingrese el primer numero"),
          ),
          TextField(
            controller: cajaDeTexto2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Ingrese el segundo numero"),
          ),
          TextField(
            controller: cajaDeTexto3,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Ingrese el tercer numero"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              analizarNumeros();
            },
            child: Text('Analizar'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Mayor: ${mayor}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Menor: ${menor}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Promedio: ${promedio}',
            style: TextStyle(fontSize: 18),
          )
        ],
      )),
    );
  }
}
