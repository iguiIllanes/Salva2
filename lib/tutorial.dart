import 'package:flutter/material.dart';
import 'package:flutter_walkthrough/flutter_walkthrough.dart';
import 'package:flutter_walkthrough/walkthrough.dart';
import './categorias.dart';

class Tutorial extends StatelessWidget {
  
  final List<Walkthrough> list = [
    Walkthrough(
      title: "Con Salva2...",
      content: "Aprenderás de forma divertida sobre primeros auxilios y prevención de riesgos.",
      imageIcon: Icons.add,
    ),
    Walkthrough(
      title: "Consejo:",
      content: "Responde las preguntas correctamente para que puedas poner en practica lo que aprendiste en una situacion de emergencia futura",
      imageIcon: Icons.check,
    ),
    Walkthrough(
      title: "Instrucciones:",
      content: "Desliza la pantalla para elegir una categoría e inicia con el primer nivel, responde correctamente las preguntas presionando en la opción que consideres correcta y supera los niveles! Serás un experto en primeros auxilios.",
      imageIcon: Icons.insert_emoticon,
    ),
    // Walkthrough(
    //   title: "Title 4",
    //   content: "Content 4",
    //   imageIcon: Icons.verified_user,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return new IntroScreen(
      list,
      new MaterialPageRoute(builder: (context) => new Categorias()),
    );
  }
}