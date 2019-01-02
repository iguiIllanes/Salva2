import 'package:flutter/material.dart';
import './casa/nivel1.dart';
import './casa/nivel2.dart';
import './casa/nivel3.dart';

class Casa extends StatefulWidget {
  @override
  _CasaState createState() => _CasaState();
}

class _CasaState extends State<Casa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
        title: Text("Casa"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          FlatButton(
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Nivel1())),
            child:Center(
              child: Column(
                children: <Widget>[
                  Icon(Icons.looks_one,size: 100.0,),
                  Padding(padding: EdgeInsets.only(top:10.0)),
                  Text('Nivel 1'),
                ],
              ),
            ),
          ),

          FlatButton(
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Nivel2())),
            child:Center(
              child: Column(
                children: <Widget>[
                  Icon(Icons.looks_two,size: 100.0,),
                  Padding(padding: EdgeInsets.only(top:10.0)),
                  Text('Nivel 2'),
                ],
              ),
            ),
          ),

          FlatButton(
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Nivel3())),
            child:Center(
              child: Column(
                children: <Widget>[
                  Icon(Icons.looks_3,size: 100.0,),
                  Padding(padding: EdgeInsets.only(top:10.0)),
                  Text('Nivel 3'),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}