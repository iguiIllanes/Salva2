import 'package:flutter/material.dart';
import './../categorias.dart';
import './../lugaresPublicos.dart';

class Nivel1Info{
  var preguntas=[
    "Tu amiga tiene una hemorragia nasal espontánea, que debe hacer?",//1
    "Despues de jugar un partido de futból, un miembro del equipo contrario se siente mareado; transpira, está muy palido y tiene sed. Usted:",//2
    "Tu compañero recibe un pelotazo en la cara y cae sobre el césped. Se siente aturdido y sangra por una de las fosas nasales. Usted:",//3
    "Un niño se cayó de un árbol y aterrizó de cabeza. No se levanta, pero llora y se queja de dolor de cuello. Usted:",//4
    "Su compañera pisó un clavo y se le hundió profundamente en el pie. La herida sangra un poco. Usted:",//5
    "A la mañana, una abeja picó en la mano a tu compañera, esta con la mano muy hinchada y se queja cada vez más de que le falta el aire. Usted:",//6
    "El profesor tiró del cable de la computadora con la mano mojada, se esta electrocutando y no puede soltar el cable. Usted:",//7
    "Qué pauta hay que seguir siempre en la valoración de la escena y de la víctima?",//8
    "En la valoración de la víctima, qué hago inmediatamente después de determinar el nivel de consciencia de la víctima?",//9
    "Al comprobar la vía aérea de la víctima, cuándo se coloca una cánula de Güedell?",//10
  ];
  var respuestas=[
    ["Inclinar la cabeza hacia atrás y\n taponar las fosas nasales con algodon","Inclinar la cabeza hacia adelante\n y después presionar las fosas nasales","Tapar la nariz","Meter la cabeza en agua fría"],//1
    ["Le lleva rapidamente a la enfermería","Le hace sentarse bajo la sombra,\n le da algo de tomar y lo vigila","Le compra un helado para que lo\n come y se refresque","Le hecha agua fría para que su cuerpo\n se atempere"],//2
    ["Lo haces sentar y le inclinas la cabeza\n hacia atrás para detener el flujo\n de sangre","Le das un pañuelo para que se cubra\n la fosa nasal por la que sangra","Lo haces sentar con la cabeza\n inclinada hacia delante, le pone\n una compresa fría en la nariz y\n después llamas a una ambulancia","Le dejas dormir para que se recupere"],//3
    ["Lo deja acostado, le inmoviliza el cuello\n y le pide a otra persona persona\n que llame una ambulancia","Improvisa una camilla con alguna\n manta y lo manda en taxi a un hospital","Abraza al niño, le hace un masaje en la\n zona suave hasta que se calme,\n y luego lo lleva al médico","Pides ayuda para subirlo a un auto o\n taxi y lo llevan al medico"],//4
    ["Le saca el clavo, le venda el pie con lo\n que tenga a mano y después la lleva\n al médico","Le saca el clavo, le desinfecta la\n herida con agua oxigenada y al final\n le pone una venda esterilizada","Deja el clavo donde está, le venda la\n herida y la lleva a la sala de guardia\n de un hospital","Deja el clavo mete el pie al agua fría\n con alcohol"],//5
    ["La lleva al medico más cercano si\n persiste la falta de aliento","Le da una bebida alcohólica para\n dilatarle los vasos sanguíneos y que\n le resulte más fácil respirar","Le pone una cebolla fresca en la mano","Debe descansar al menos 24hrs más\n para recién llevarla al médico"],//6
    ["Interrrumpe el contacto entre la\n víctima y el suministro eléctrico con\n un objeto no conductor de electricidad","Desenchufa el cable para detener la\n corriente eléctrica","Corta el cable para detener la corriente\n eléctrica","Grita para que llamen a los bomberos"],//7
    ["Proteger-Ayudar-Socorrer.","Proteger-Avisar-Socorrer.","Permanecer-Avisar-Sustituir.","Prevenir-Asistir-Servir."],//8
    ["Aplicar el protocolo PAS","Aplicar el protocolo A,B,C y D.","Comprobar la vía aérea colocando al\n paciente en DL.","No hacer nada"],//9
    ["En víctimas obesas.","En víctimas embarazadas.","En víctimas inconscientes.","Ninguna de las anteriores"],//10
  ];
  var respuestasCorrectas =[
    "Inclinar la cabeza hacia adelante y después presionar las fosas nasales",//1
    "Le hace sentarse bajo la sombra, le da algo de tomar y lo vigila",//2
    "Lo haces sentar y le inclinas la cabeza hacia atrás para detener el flujo de sangre",//3
    "Lo deja acostado, le inmoviliza el cuello y le pide a otra persona persona que llame una ambulancia",//4
    "Deja el clavo donde está, le venda la herida y la lleva a la sala de guardia de un hospital",//5
    "La lleva al medico más cercano si persiste la falta de aliento",//6
    "Interrrumpe el contacto entre la víctima y el suministro eléctrico con un objeto no conductor de electricidad",//7
    "Proteger-Ayudar-Socorrer.",//8
    "Comprobar la vía aérea colocando al paciente en DL.",//9
    "En víctimas inconscientes.",//10
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
        body: ListView(
          children: <Widget>[
            Container(
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

                  Padding(padding: EdgeInsets.all(20.0)),

                  Image.asset("foto/lugaresPub/n2/${info.imagenes[numeroPregunta]}.png",height: 250.0,),
                  Text(info.preguntas[numeroPregunta],style:TextStyle(fontSize: 20.0)),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(20.0)),
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
                      Padding(padding: EdgeInsets.all(20.0)),
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
                      Padding(padding: EdgeInsets.all(20.0)),
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
                      Padding(padding: EdgeInsets.all(20.0)),
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
          ],
        ),
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
