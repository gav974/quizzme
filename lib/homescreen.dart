
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Icon checkIcon = const Icon(Icons.check,color:Colors.green);
  final Icon closeIcon = const Icon(Icons.close,color:Colors.red);
  var resultIcone = <Icon>[];

  void addItems (item){
    setState(() {
      resultIcone.add(item);
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
            const Expanded(
              flex: 5,
              child:Padding(
                padding: EdgeInsets.symmetric(vertical:15.0, horizontal: 15.00),
                child: Center(
                  child: Text('Question',
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
                padding: const EdgeInsets.fromLTRB(10, 15, 15, 15),
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


