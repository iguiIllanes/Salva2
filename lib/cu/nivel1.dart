import 'package:flutter/material.dart';
import './../colegioUniversidad.dart';
import './../categorias.dart';

class Nivel1Info{
  var preguntas=[
    "Tu compañero tiene una quemadura leve que le aplicarias?",//1
    "Durante la RCP.Cuántas veces debes empujar hacia abajo -sobre el centro del pecho- antes de realizar el boca a boca?",//2
    "Cuántas respiraciones debes darle a la otra persona?",//3
    "Una persona tiene un ataque cardíaco en media calle, vos tienes aspirinas, ayudaria que le des una?",//4
    "Alguien está sufriendo una convulsión, debes sostenerle?",//5
    "Tu amigo se atoro con una uva, realizas la maniobra de Heimlich, crees que ayuda darle 5 golpes en la espalda.",//6
    "Lo primero que debes hacer cuando alguien está sufriendo un golpe de calor es:",//7
    "¿Cuál de las siguientes no es una señal de hipotermia?",//8
    "¿Qué harías si presencias un caso de hipotermia?",//9
    "¿Qué significan las siglas PAS?",//10
  ];
  var respuestas=[
    ["Agua","Dentrífico","Nada","Hielo"],//1
    ["15 veces","30 veces","10 veces","1 vez"],//2
    ["3 respiraciones","2 respiraciones","5 respiraciones","le soplas 1 min."],//3
    ["No, mejor un digestan","Si","No, se atragantaria","No, con eso se muere"],//4
    ["Si, se puede golpear","No, colocas algo suave debajo \n su cabeza","No, solo lo observas","no haces nada"],//5
    ["Claro, lo moreteas","Si","No, solo lo alzas de cabeza","No"],//6
    ["Alejarle del sol.","Darle algo de beber.","No lo sé","Tumbarle."],//7
    ["Balbucear","Pulso débil","Soplo cardíaco","Temblores"],//8
    ["Sumergir su cuerpo en agua tibia.","Aplicar compresas calientes sobre \n el centro de su cuerpo.","No lo sé","Lo dejo recostado"],//9
    ["prevenir, animar , silbar","proteger, avisar, socorrer","proteger, ayudar, sanar ","prevenir, avisar, socorrer"],//10
    /*
    ["hemorragia por el oído","hemorragia nasal","hemorragia arterial","hemorragia capilar"],//11
    ["existencia de un chasquido","ausencia total de dolor","amoratamiento de la zona","deformación del miembro"],//12
    ["Hipodermis","dermis","epidermis","todas son correctas"],//13
    ["PLS","LSD","STD","ABS"],//14
    ["mantenerlo caliente","tranquilizar a la victima"," darle de beber y comer","comprobar sus signos vitales"],//15
    ["antisépticos","cerradura","medicamentos","material de curación"],//16
    */
  ];
  var respuestasCorrectas =[
    "Nada",//1
    "30 veces",//2
    "2 respiraciones",//3
    "Si",//4
    "No, colocas algo suave debajo \n su cabeza",//5
    "Si",
    "Alejarle del sol.",
    "Temblores",
    "Aplicar compresas calientes sobre \n el centro de su cuerpo.",
    "proteger, avisar, socorrer",
    /*
    "",//11
    "",//12
    "",//13
    "",//14
    "",//15
    "",//16
    */
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
          alignment: Alignment.center,
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

              Image.asset("foto/cu/n1/${info.imagenes[numeroPregunta]}.png",height: 200.0,),
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
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> ColegioUniversidad())),
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