
import 'package:flutter/material.dart';
import 'package:quizzme/constant/quizzBrain.dart';

class Questions {
  String questions;
  bool reponse;
  Questions(this.questions, this.reponse);
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  final answerTrue= "vrai";
  final answerFalse= "faux";
  var increment= 0 ; //équivaut à QuestionNumber

  final Icon checkIcon = const Icon(Icons.check,color:Colors.green);
  final Icon closeIcon = const Icon(Icons.close,color:Colors.red);
  var resultIcone = <Icon>[];



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
Icon item ;
setState(() {
      if( increment < QuizzBrain().question.length - 1 ) { //verification que l'increment de ne depasse pas l'index de la liste
        if (answer[increment]== response){ //verification de la reponse à la question
           item = checkIcon;

        }else {
           item = closeIcon;
        }
        resultIcone.add(item); //insertion de l'icone en fonction des réponses
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
                  child: Text(QuizzBrain().question.elementAt(increment),
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


