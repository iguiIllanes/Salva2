import 'dart:async';

import 'package:flutter/material.dart';

import './colegioUniversidad.dart';
import './casa.dart';
import './lugaresPublicos.dart';
import './acercaDe.dart';
import 'dart:io';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int pantalla =0;
  final snackBar = SnackBar(
      content: Text('toca los íconos y desliza para interactuar.'),
      duration: Duration(seconds: 3),
  );
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>_scaffoldKey.currentState.showSnackBar(snackBar));
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Categorias",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.red.shade800,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Text("   Categorias" ,style: TextStyle(fontWeight: FontWeight.bold),),
              Divider(),
              ListTile(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>ColegioUniversidad())),
                title: Text("Colegio/Universidad"),
                trailing:Icon(Icons.school),
              ),
              ListTile(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>Casa())),
                title: Text("Casa"),
                trailing:Icon(Icons.home),
              ),
              ListTile(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>LugaresPublicos())),
                title: Text("Lugares Públicos"),
                trailing:Icon(Icons.business),
              ),
              Divider(),
              ListTile(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>AcercaDe())),
                title: Text("Acerca de"),
                trailing:Icon(Icons.help_outline),
              ),
              Divider(),
              ListTile(
                onTap: ()=>exit(0),
                title: Text("Salir"),
                trailing: Icon(Icons.error_outline),
              ),
            ],
          ),
        ),
        body: PageView(
          children: <Widget>[
            _categoriasPantalla(Colors.blueAccent,Icons.school,"Colegio/Universidad",1,()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ColegioUniversidad())),),
            _categoriasPantalla(Colors.amberAccent, Icons.home, "Casa", 2,()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Casa()))),
            _categoriasPantalla(Colors.purple, Icons.business, "Lugares Públicos", 4,()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LugaresPublicos()))),
          ],
        ),
      ),
    );
  }
}

Widget _categoriasPantalla(Color color,IconData icon, String texto,pantalla,void presionando()){
  return Container(
    alignment: Alignment.center,
    color: color,
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: MaterialButton(
            onPressed: presionando,
            child: CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.white,
              child: Icon(icon,size: 100.0,color: color,)
              ,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:20.0)
        ),
        Text(texto,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color:Colors.white),),
      ],
    )
  );
}