import 'package:flutter/material.dart';
import 'package:my_app_flutter/TablaMultiplicar.dart';

class TablaMultiplicarGenerador extends State<TablaMultiplicar> {
  TextEditingController cajaDeTexto = TextEditingController();

  List<String> tabla = [];

  void generarTabla(int numero) {
    setState(() {
      tabla.clear();
      for (int i = 0; i <= 14; i++) {
        tabla.add("${numero} x ${i} = ${numero * i}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabla de Multiplicar"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: cajaDeTexto,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Ingrese un numero"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                int numero = int.tryParse(cajaDeTexto.text) ?? 0;
                generarTabla(numero);
              },
              child: Text("Mostrar Tabla")),
          SizedBox(
            height: 20,
          ),
          if (tabla.isNotEmpty)
            Column(
              children: tabla
                  .map(
                    (multiplicaciones) => Text(
                      '${multiplicaciones}',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                  .toList(),
            )
        ],
      )),
    );
  }
}
