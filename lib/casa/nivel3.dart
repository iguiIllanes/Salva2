import 'package:flutter/material.dart';
import './../categorias.dart';


class Nivel2Info{
  var preguntas=[
    "Al comprobar la humedad y calor de aire exhalada, qué estoy haciendo? ",//1
    "Cuál se considera un pulso normal?",//2
    "Qué comprueba la escala A.V.D.N.?",//3
    "Cuál es el objetivo del Soporte Vital Básico?",//4
    "Sobre el SVB, es incorrecto sobre el procedimiento:",//5
    "Cómo se abre la vía aérea?",//6
    "La PR se manifiesta por:",//7
    "Respecto a la RP, señalar el supuesto incorrecto:",//8
    "Cuándo sospechamos la existencia de PC? Señalar el supuesto incorrecto:",//9
    "En la RC, es incorrecto:",//10
  ];
  var respuestas=[
    ["Sentir.","Comprobar la existencia de respiración","Oir.","Las primeras dos opciones."],//1
    ["59ppm.","72ppm.","122ppm.","30ppm."],//2
    ["La vía aérea.","El estado respiratorio.","El estado neurológico.","El estado circulatorio. "],//3
    ["Reanimar a una persona en PC.","Reanimar a una persona en PR.","Reanimar a una persona en PCR.","Todas son correctas."],//4
    ["Se aplica en el mismo lugar del\n accidente.","Se aplica inmediatamente antes de\n producirse.","Se mantiene todo el tiempo que sea\n necesario.","No se hace nada"],//5
    ["Víctima en DS, cabeza en\n hiperextensión y tracción del mentón, en todo caso.","Subluxación mandibular si\n sospechamos lesión en columna cervical.","Cuatro dedos en forma de gancho para\n extraer cuerpos extraños y colocar la lengua.","Si no se extraen los objetos extraños\n con los dedos, en todo caso, maniobra de Heimlich."],//6
    ["Ausencia de respiración espontánea.","Pulso lento y débil.","Pérdida de conocimiento.","Cianosis en labios."],//7
    ["Colocar a la víctima en DS sobre el\n suelo.","Dos insuflaciones de rescate sin\n intervalo de tiempo.","Una insuflación cada cinco minutos.","No hacer nada"],//8
    ["No se oye el latido al poner el oído\n sobre el pecho de la víctima.","No hay pulso arterial.","Miosis en las pupilas.","Cianosis de la piel."],//9
    ["Víctima en DS sobre plano rígido.","Localizar la arteria carótida.","Presionar en el tercio inferior del\n esternón.","Presionar sobre las manos con los\n brazos flexionados, comprimiendo unos 5 cm en adultos."],//10
  ];
  var respuestasCorrectas =[
    "Las primeras dos opciones.",//1
    "72ppm.",//2
    "El estado neurológico.",//3
    "Todas son correctas.",//4
    "No se hace nada",//5
    "Si no se extraen los objetos extraños\n con los dedos, en todo caso, maniobra de Heimlich.",//6
    "Ausencia de respiración espontánea.",//7
    "Una insuflación cada cinco minutos.",//8
    "Miosis en las pupilas.",//9
    "Víctima en DS sobre plano rígido.",//10
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

              Image.asset("foto/casa/n3/${info.imagenes[numeroPregunta]}.png",height: 250.0,),
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