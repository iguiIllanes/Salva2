import 'package:flutter/material.dart';
import './../categorias.dart';
import './../colegioUniversidad.dart';

class Nivel2Info{
  var preguntas=[
    "cuando exploramos el torax que debemos buscar?",//1
    "en el abdomen sabemos que tiene una hemorragia interna cuando...",//2
    "para valorar los antecedentes usaremos las siglas",//3
    "La PLS significa",//4
    "La posición decúbito supino se utiliza en",//5
    "Ante una víctima con hemorragia externa, la primera medida a tomar será:",//6
    "La posición de seguridad lateral se utiliza...",//7
    "Cuáles son las principales constantes vitales y en qué orden deben evaluarse?",//8
    "Qué es la inconsciencia?",//9
    "Si presenta una incontinencia de esfínteres, podemos pensar que la persona tiene:",//10
  ];
  var respuestas=[
    ["lesiones traumaticas,\n dolor toracico a nivel de las costillas","Traumatismos toracicos","dolor en medula espinal","que se levante el pecho al respirar"],//1
    ["tiene un morado","tiene los abdominales \n como una piedra","cuando esta muy blanda la piel","se le hincha la zona"],//2
    ["OVACE","OPUMA","SVB","RCP"],//3
    ["Pulso estable en ingles","Posición de trendelemburg","posicion lateral de seguridad","post last scriptum"],//4
    ["fractura en los brazos","fractura en las piernas, en la columna\n vertebral y para hacer SVB","fractura de cráneo","fractura de clavícula"],//5
    ["Torniquete","Presión directa sobre la herida","Compresión sobre la arteria principal\ndel miembro","Vendaje compresivo"],//6
    ["..a la hora de acostar a una persona\n con discapacidad física.","..con las personas inconscientes que\n respiran y tienen pulso.","..para dormir a los bebés y evitar la\n muerte súbita.","Esperar a que pare de sangrar por\n sí misma"],//7
    ["Consciencia, respiración y pulso","Pulso y respiración","Pulso, respiración y consciencia","ninguna"],//8
    ["Estado en el que el cerebro está en\n completa vigilia","Estado en el que el encéfalo está en\n completa vigilia","Estado en el que el encefalo no está\n en completa vigilia","Ninguna es correcta"],//9
    ["Una lesión medular","Una luxación","Mucho miedo","Una lipotimia"],//10
  ];

  var respuestasCorrectas =[
    "lesiones traumaticas, dolor toracico a nivel de las costillas",//1
    "tiene los abdominales como una piedra",//2
    "OPUMA",//3
    "posicion lateral de seguridad",//4
    "fractura en las piernas, en la columna vertebral y para hacer SVB",//5
    "Presión directa sobre la herida",//6
    "..con las personas inconscientes que respiran y tienen pulso.",//7
    "Consciencia, respiración y pulso",//8
    "Estado en el que el encéfalo está en completa vigilia",//9
    "Una lesión medular",//10
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

              Image.asset("foto/cu/n2/${info.imagenes[numeroPregunta]}.png",height: 250.0,),
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
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> ColegioUniversidad())), //AQUI DEBES CAMBIAR ESTO SI SE ANIADE UN NIVEL
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