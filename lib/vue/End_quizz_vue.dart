import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class pageQuizz extends StatelessWidget {
  const pageQuizz({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Expanded(
                 child:Center(
                   child: Text(
                     "C'est fini recommencer plus tard",
                   style: TextStyle(
                     fontSize: 30,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                 ),

                 ),
            TextButton(
              style: TextButton.styleFrom(

              ),
                onPressed: (){
              Navigator.pop(context);
            }, child: Icon(
              Icons.arrow_back,
              size:50, color: Colors.white,
            )
            ),
            Center(
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}





