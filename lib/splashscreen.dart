import 'dart:async';

import 'package:flutter/material.dart';

import './tutorial.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Tutorial())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color:Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex:2,
                child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top:37.5),),
                      Image.asset('foto/salva2.png',height: 250.0,),
                      Padding(padding:EdgeInsets.only(top:10.0),),
                      Text("Salva2",style: TextStyle(color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                    ]
                  ),
                )
              ),
              Expanded(
                flex:2,
                child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),
                      Padding(padding:EdgeInsets.only(top:10.0),),
                      Text('Iniciando...',style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}