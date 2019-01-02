import 'package:flutter/material.dart';
import './../categorias.dart';
import './../lugaresPublicos.dart';

class Nivel1Info{
  var preguntas=[
    "¿Cuáles son los valores normales de frecuencia respiratoria?",//1
    "¿Qué valores de pulso son normales en un adulto?(En latidos por minuto)",//2
    "¿Cuáles son los valores normales de temperatura de un niño?",//3
    "Que se explora en la exploración primaria?",//4
    "Que maniobra usaremos para saber si una persona respira?",//5
    "Si respira es seguro que...",//6
    "Si no respira y esta inconsciente podemos deducir",//7
    "Exploración Secundaria se hace cuando",//8
    "En la exploración secundaria determinamos el nivel de la consciencia, como es la clasificación de estos niveles?",//9
    "Cuando el paciente esta totalmente consciente decimos que esta...",//10
  ];
  var respuestas=[
    ["12 a 20 respiraciones por minuto","17 a 25 respiraciones por minuto","30 a 40 respiraciones por minuto","ninguno"],//1
    ["100-115","60–100","90–120","150–180"],//2
    ["36,0","37,2","37,0","37,7"],//3
    ["el pulso","la consciencia y la respiración","el tamaño de los ojos","el estado neurológico"],//4
    ["pondremos la mano cerca de la boca\n y la nariz para notar el aire","pondremos la mano cerca de la boca\n y la nariz para notar el aire","aplicaremos la maniobra\n frente-mentón para escuchar notar\n y ver su respiración","tiraremos del cuello hacía atrás para\n que se le oiga respirar"],//5
    ["el corazón funciona","tiene problemas el pulmón","los hematíes no hacen su trabajo\n correctamente","tiene la glotis obstruida"],//6
    ["esta muerto","tiene un paro cardiorrespiratorio","esta aguantando la respiración","se le ha movido la glotis"],//7
    ["la exploración primaria ha salido mal","no se hace la primaria puesto que la\n secundaria es mejor","solo se hace cuando lleva mas de 10\n minutos consciente","todo va bien"],//8
    ["Nivel 1, 2, 3, 4 y 5","primer grado, segundo grado,\n tercer grado","A V D I","Consciente e Inconsciente"],//9
    ["Ebrio","Sobrio","Al caso de todo","Esta en alerta"],//10
  ];
  var respuestasCorrectas =[
    "12 a 20 respiraciones por minuto",//1
    "60–100",//2
    "37,0",//3
    "la consciencia y la respiración",//4
    "aplicaremos la maniobra frente-mentón para escuchar notar y ver su respiración",//5
    "el corazón funciona",//6
    "tiene un paro cardiorrespiratorio",//7
    "todo va bien",//8
    "A V D I",//9
    "Esta en alerta",//10
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
var info = new Nivel1Info();

class Nivel1 extends StatefulWidget {
  @override
  _Nivel1State createState() => _Nivel1State();
}

class _Nivel1State extends State<Nivel1> {
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

              Image.asset("foto/lugaresPub/n1/${info.imagenes[numeroPregunta]}.png",height: 250.0,),
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
               Text("Felicidades! Acabaste el Nivel 1", style: TextStyle(fontSize: 20.0),),
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
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> LugaresPublicos())),
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
