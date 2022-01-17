import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class pageQuizz extends StatelessWidget {
  const pageQuizz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Center(
            child: Expanded(

                child:Text(
                  "C'est fini recommencer plus tard",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),

                ),
          ),
          Center(
            child: TextButton(
                onPressed: (){
              Navigator.pop(context);
            }, child: Icon(
              Icons.arrow_back,
              size:25, color: Colors.white,
            )
            ),
          )
        ],
      ),
    );
  }
}



