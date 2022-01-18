
import 'package:flutter/material.dart';
import 'package:quizzme/controller/QuizzBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizzBrain qB = QuizzBrain();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Icon checkIcon = const Icon(Icons.check,color:Colors.green);
  final Icon closeIcon = const Icon(Icons.close,color:Colors.red);

  var resultIcone = <Icon>[];

  void addItems (response){                        //addItems  <==> checkAnswer
setState(() {
  qB.nextQuestion();                                //rajoute +1
  qB.finishIncrement();                            //vérifie la valeur de l'index
  if(qB.getFinish() == "true"){                   //traite le dépassement de l'index
    resultIcone = <Icon>[];
    qB.reset();                                   //mise a zero de l'incrément et de la liste d'icones
    __onAlertButtonPressed(context);              //active une alerte

  }


  if (qB.getAnswerText() == response) {           //vérification de la réponse à la question
    resultIcone.add(checkIcon);                   //insertion de l'icone en fonction des réponses
  } else {
    resultIcone.add(closeIcon);
  }


}
);}



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
                  child: Text(qB.getQuestionText(),
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
                   addItems(true);
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
                    addItems(false);
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

__onAlertButtonPressed(context) {
  Alert(
    context: context,
    type: AlertType.warning,
    title: "Fin du questionnaire",
    desc: "On recommence ",
    buttons: [
      DialogButton(
        radius: BorderRadius.all(Radius.circular(30.0)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade700,
            Colors.blueAccent.shade400,
          ],
        ),
        child: Text(
          "Retour",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pushNamed(context, '/'),
        width: 120,
      )
    ],
  ).show();
}
