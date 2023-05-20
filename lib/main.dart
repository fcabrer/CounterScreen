import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screen/counter/counter_funcion._screen.dart';
//import 'package:flutter_application_1/presentation/screen/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey
      ),
      home: const CounterFuncionScreen(),
    );
  }
}
