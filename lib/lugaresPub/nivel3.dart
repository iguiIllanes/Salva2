import 'package:flutter/material.dart';
import './../categorias.dart';


class Nivel2Info{
  var preguntas=[
    "Respecto a la RCP, es correcto:",//1
    "Qué puede causar una asfixia?",//2
    "Qué es la muerte dulce?",//3
    "Qué es la lesión necrótica del músculo cardiaco por isquemia aguda?",//4
    "Ante un infarto agudo de miocardio, cómo he de colocar a la víctima?",//5
    "De las siguientes, qué posición es incorrecta?",//6
    "Cuál es el estado más profundo de pérdida de conciencia?",//7
    "Qué coma puede deberse a una ingesta importante de alcohol?",//8
    "Qué acidosis puede ser causada por hiperglucemia? ",//9
    "La convulsión que consiste en contracturas rítmicas y extensas produciendo flexión y extensión de las extremidades es:",//10
  ];
  var respuestas=[
    ["Se inicia con dos insuflaciones y treinta\n compresiones.","Sólo es un 30/2 cuando hay un\n socorrista.","Se inicia con dos insuflaciones de\n rescate.","Se inicia con tres insuflaciones y\n cuarenta compresiones. "],//1
    ["Una ventilación inadecuada debida\n generalmente a obstrucción de las vías respiratorias altas.","Disminución de oxígeno en las\n inspiraciones.","Transporte inadecuado de oxígeno por\n los hematíes.","Todas son causas."],//2
    ["Asfixia.","Lipotimia.","Asfixia por monóxido de carbono.","IAM."],//3
    ["Shock.","IAM.","Sincope.","Coma."],//4
    ["Trendelemburg.","Antishock.","Elevar MMII.","Ninguno."],//5
    ["Lipotimia->Navaja","IAM->PLS","Shock Septico->Trendelemburg","Shock Cardiogénico->Trendelemburg"],//6
    ["Shock","Coma","Lipotimia","Sincope"],//7
    ["Traumatico","Toxico","Metabolico","Neurologico"],//8
    ["Acidosis respiratoria","Acidosis metabolica","Cetoacidosis","La segunda y la tercera"],//9
    ["Clonica","Parcial","Tonica","Generalizada"],//10
  ];
  var respuestasCorrectas =[
    "Se inicia con dos insuflaciones y treinta\n compresiones.",//1
    "Disminución de oxígeno en las\n inspiraciones.",//2
    "Asfixia por monóxido de carbono.",//3
    "Sincope.",//4
    "Ninguno.",//5
    "Lipotimia->Navaja",//6
    "Coma",//7
    "Neurologico",//8
    "Acidosis metabolica",//9
    "Generalizada",//10
  ];
  var imagenes = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];
}

var puntosFinal=0;
var numeroPregunta=0;
var info = new Nivel2Info();

class Nivel3 extends StatefulWidget {
  @override
  _Nivel3State createState() => _Nivel3State();
}

class _Nivel3State extends State<Nivel3> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.0)),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Pregunta ${numeroPregunta + 1} de ${info.preguntas.length}",style: TextStyle(fontSize: 22.0),),
                    Text("Puntos: $puntosFinal",style: TextStyle(fontSize: 22.0),),
                  ],
                ), 
              ),

              Padding(padding: EdgeInsets.all(15.0)),

              Image.asset("foto/lugaresPub/n3/${info.imagenes[numeroPregunta]}.png",height: 250.0,),
              Text(info.preguntas[numeroPregunta],style:TextStyle(fontSize: 20.0)),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(15.0)),
                  MaterialButton(
                    onPressed: (){
                      if(info.respuestas[numeroPregunta][0]== info.respuestasCorrectas[numeroPregunta]){
                        debugPrint("Correcto");
                        puntosFinal++;
                      }else{
                        debugPrint("Incorrecto");
                      }
                      actualizarPreguntas();
                    },
                    color: Colors.orange,
                    child: Text(info.respuestas[numeroPregunta][0],style: TextStyle(fontSize: 16.0,color: Colors.black),),
                  ),
                  // boton 2
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(15.0)),
                  MaterialButton(
                    onPressed: (){
                      if(info.respuestas[numeroPregunta][1]== info.respuestasCorrectas[numeroPregunta]){
                        debugPrint("Correcto");
                        puntosFinal++;
                      }else{
                        debugPrint("Incorrecto");
                      }
                      actualizarPreguntas();
                    },
                    color: Colors.orange,
                    child: Text(info.respuestas[numeroPregunta][1],style: TextStyle(fontSize: 16.0,color: Colors.black),),
                  ),
                  // boton 2
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(15.0)),
                  MaterialButton(
                    onPressed: (){
                      if(info.respuestas[numeroPregunta][2]== info.respuestasCorrectas[numeroPregunta]){
                        debugPrint("Correcto");
                        puntosFinal++;
                      }else{
                        debugPrint("Incorrecto");
                      }
                      actualizarPreguntas();
                    },
                    color: Colors.orange,
                    child: Text(info.respuestas[numeroPregunta][2],style: TextStyle(fontSize: 16.0,color: Colors.black),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(15.0)),
                  MaterialButton(
                    onPressed: (){
                      if(info.respuestas[numeroPregunta][3]== info.respuestasCorrectas[numeroPregunta]){
                        debugPrint("Correcto");
                        puntosFinal++;
                      }else{
                        debugPrint("Incorrecto");
                      }
                      actualizarPreguntas();
                    },
                    color: Colors.orange,
                    child: Text(info.respuestas[numeroPregunta][3],style: TextStyle(fontSize: 16.0,color: Colors.black),),
                  ),
                  // boton 2
                ],
              ),
            ],
          ),
        )
      ),
    );
  }


  void actualizarPreguntas(){
    setState((){
      if(numeroPregunta == info.preguntas.length -1 ){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Resumen()));
      }else{
        numeroPregunta++;
      }
    });  
  }
}

class Resumen extends StatefulWidget {
  @override
  _ResumenState createState() => _ResumenState();
}

class _ResumenState extends State<Resumen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()async=>false,
        child: Scaffold(
         body: Container(
           alignment: Alignment.center,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              Padding(padding: EdgeInsets.all(30.0)),
               Text("Felicidades! Acabaste el Nivel 3", style: TextStyle(fontSize: 20.0),),
               Padding(padding: EdgeInsets.all(10.0)),
               Text("Puntos: $puntosFinal", style: TextStyle(fontSize: 40.0),),
               Padding(padding: EdgeInsets.all(30.0)),
               FlatButton(
                 onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Categorias())),
                 padding: const EdgeInsets.all(10.0),
                 color: Colors.red,
                 child: Text("Seleccionar Categoría",style: TextStyle(color: Colors.white),),
                ),
               Padding(padding:EdgeInsets.only(top: 10.0)),
               FlatButton(
                 onPressed: reset,
                 padding: const EdgeInsets.all(10.0),
                 color: Colors.amber,
                 child: Text("Volver a Jugar"),
               ),
                Padding(padding:EdgeInsets.only(top: 10.0)),
                FlatButton(
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Categorias())), //AQUI DEBES CAMBIAR ESTO PARA CUANDO SE ANIADAN MAS NIVELES
                 padding: const EdgeInsets.all(10.0),
                 color: Colors.green,
                 child: Text("Siguiente nivel"),
               ),
             ],
           ) 
         ),
        ),
    );
  }
  void reset(){
    setState(() {
      Navigator.pop(context);
      puntosFinal =0;
      numeroPregunta=0;
    });
  }
}