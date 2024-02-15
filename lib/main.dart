//nombre: Felix Alejandro Camilo Javier
//matricula: 2021-1016

import 'package:flutter/material.dart';
import 'package:my_app_flutter/Presentacion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Presentacion());
  }
}
