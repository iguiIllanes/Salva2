import 'package:flutter/material.dart';

class AcercaDe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text("Acerca de"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding:EdgeInsets.only(top:10.0)),
            Text("Salva2 es la mejor aplicación para aprender de una manera divertida sobre primeros auxilios con el fin de generar una cultura de prevención en la sociedad empezando por los jóvenes.",style: TextStyle(fontSize: 20.0),),
            Padding(padding:EdgeInsets.only(top:15.0)),
            Text("Creada por:\n   -Keneth Bonilla\n   -Natalia Durán\n  -Maria Fernanda Córdova\n   -Ignacio Illanes", style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      )
    );
  }
}