
import 'package:flutter/material.dart';

class Constant {
  static int score = 0 ;

}

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

  final answerTrue= "vrai";
  final answerFalse= "faux";
  var increment= 0 ; //équivaut à QuestionNumber

  final Icon checkIcon = const Icon(Icons.check,color:Colors.green);
  final Icon closeIcon = const Icon(Icons.close,color:Colors.red);
  var resultIcone = <Icon>[];


  final List question = <String>[
    "La durée d'un jour est exactement de 24 heures",
    "La dengue est une maladie transmise par la piqure d'une tique.",
    "Le premier Etre vivant à partir dans l'Espace est la chienne Laika, envoyée par les Américains.",
    "L' Est de l'Espagne est bordée par l'Océan Atlantique.",
    "Quand la chèvre crie, elle baguette.",
    "La soeur de mon frère, est aussi ma soeur.",
    "Etienne joue à Counter strike",
    "La tomate est un légume.",
    "Le requin-nourrice aspire ses proies.",
    "L'alphabet arabe contient 26 lettres.",
  ];

  final List answer =<String>[
    'faux',
    'faux',
    'faux',
    'faux',
    'faux',
    'vrai',
    'faux',
    'faux',
    'vrai',
    'faux'
  ];




  void addItems (response){// ajout des icones pour le score
var item ;
setState(() {
      if( increment < question.length - 1 ) {
        if (answer[increment]== response){
           item = checkIcon;
           Constant.score++;//nombre de bonnes reponses
        }else {
           item = closeIcon;
        }
        resultIcone.add(item);
      increment++;

    } else {//reinitialise toutes les listes et les incréments et redirecion sur une nouvelle page
        resultIcone = <Icon>[];
        increment = 0 ;
        Navigator.pushNamed(context, '/second');

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
                   addItems(answerTrue);
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
                    addItems(answerFalse);
                  },
                  child: const Text("Faux",
                    style:TextStyle(
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


