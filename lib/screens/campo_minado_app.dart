// ignore_for_file: avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../components/resultado_widget.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({Key? key}) : super(key: key);

  void _reiniciar() {
    print("Reiniciar");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: false,
          onReiniciar: _reiniciar, // Remova os parênteses aqui
        ),
        body: Container(
          child: const Text("Tabuleiro"),
        ),
      ),
    );
  }
}
