import 'package:flutter/material.dart';
import './splashscreen.dart';

void main() => runApp(new Salva2());

class Salva2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Salva2',
      home: new SplashScreen()
    );
  }
}