import 'package:flutter/material.dart';
import './../categorias.dart';


class Nivel2Info{
  var preguntas=[
    "El AVDI significa:",//1
    "Si las pupilas estan dilatadas decimos que tiene",//2
    "Cuando las pupilas son iguales decimos que son",//3
    "Cuando las pupilas reaccionan a la luz decimos que son",//4
    "Cuando las pupilas son muy pequeñas decimos que son",//5
    "La frecuencia respiratoria de un adulto es de:",//6
    "Cuando la Frecuencia respiratoria esta por encima de lo normal se dice que es",//7
    "Cuando la frecuencia respiratoria esta por debajo de lo normal decimos que es",//8
    "Cuales son las cifras normales del pulso",//9
    "Al explorar el resto del cuerpo por donde empezamos?",//10
  ];
  var respuestas=[
    ["Alerta, Estimulos Verbales, Estimulos\n Dolorosos e Inconsciente","Avisar, Ver, Diagnosticar","Avisar, Diagnosticar","Alertar a los Verdes De Inconsciente"],//1
    ["Miosis","Isocoria","Midriasis","Anisocoria"],//2
    ["Anisocorias","Midriaticas","Mioticas","Isocorias"],//3
    ["mioticas","midriaticas","reactivas","anisocorias"],//4
    ["arreactivas","mioticas","midriaticas","Anisocorias"],//5
    ["10 a 15 por minuto","12 a 20 por minuto","15 a 25 por minuto","20 a 30 por minuto"],//6
    ["Bradicardia","Bradipnea","Apnea","Taquipnea"],//7
    ["Bradicardia","taquipnea","hipoventilacion","Bradipnea"],//8
    ["40 a 80 pulsaciones por minuto","60 a 100 pulsaciones por minuto","de 80 a 120 pulsaciones por minuto","100 a 120 pulsaciones por minuto"],//9
    ["Por las extremidades","por el abdomen","por la cabeza","por el torax"],//10
  ];
  var respuestasCorrectas =[
    "Alerta, Estimulos Verbales, Estimulos Dolorosos e Inconsciente",//1
    "Midriasis",//2
    "Isocorias",//3
    "reactivas",//4
    "mioticas",//5
    "12 a 20 por minuto",//6
    "Taquipnea",//7
    "Bradipnea",//8
    "60 a 100 pulsaciones por minuto",//9
    "por la cabeza",//10
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

class Nivel2 extends StatefulWidget {
  @override
  _Nivel2State createState() => _Nivel2State();
}

class _Nivel2State extends State<Nivel2> {
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

              Image.asset("foto/casa/n2/${info.imagenes[numeroPregunta]}.png",height: 250.0,),
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
               Text("Felicidades! Acabaste el Nivel 2", style: TextStyle(fontSize: 20.0),),
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