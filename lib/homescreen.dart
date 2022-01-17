
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//class constructQuestion {
//  String ;
//  bool ;
//  constructQuestion(this.String)}


class _MyHomePageState extends State<MyHomePage> {
  final Icon checkIcon = const Icon(Icons.check,color:Colors.green);
  final Icon closeIcon = const Icon(Icons.close,color:Colors.red);
  var resultIcone = <Icon>[];
  var increment=0 ;

  final List question = <String>[
    "La durée d'un jour a toujours été de 24 heures",
    "La dengue est une maladie transmise par la piqure d'une tique.",
    "Le premier Etre vivant à aller dans l'Espace est la chienne Laika, envoyée par les Américains.",
    "L'est de l'Espagne est bordée par l'Océan Atlantique.",
    "Quand la chèvre crie, elle baguette.",
    "La soeur de mon frère, est aussi ma soeur.",
    "La durée d'un jour a toujours été de 24 heures.",
    "La tomate est un légume.",
    "Le requin-nourrice aspire ses proies.",
    "L'alphabet arabe contient 26 lettres.",
  ];



  void addItems (item){
    setState(() {
      final lengthOfQuestion = question.length-1;
      if(resultIcone.length <=19 || question.length < lengthOfQuestion) {
      print (lengthOfQuestion);

        resultIcone.add(item);
      increment++;
      print (increment);
    } else{
        resultIcone = <Icon>[];
        increment --;

      }
      }
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(
              flex: 5,
              child:Padding(
                padding: EdgeInsets.symmetric(vertical:15.0, horizontal: 15.00),
                child: Center(
                  child: Text(question.elementAt(increment),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0 ,horizontal: 15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    onSurface: Colors.white,
                  ),
                  onPressed: (){
                   addItems(checkIcon);
                    },
                  child: const Text("Vrai",
                    style:TextStyle(
                        color:Colors.white70,
                        fontSize:20
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0 ,horizontal: 15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    onSurface: Colors.white,
                  ),
                  onPressed: (){
                    addItems(closeIcon);
                  },
                  child: const Text("Faux",style:TextStyle(
                      color:Colors.white70,
                      fontSize:20
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: resultIcone,
            )
          ],
        ),
      ),
    );
  }
}


