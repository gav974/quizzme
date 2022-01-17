import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  getMethod() async{
    var strUrl= Uri.parse('http://10.0.2.2/Api_flutter/Extract_question.php');
    var res = await http.get(strUrl,headers:{"Accept":"application/json"});
    var responsBody = jsonDecode(res.body);
    print(responsBody);
    return responsBody;
  }

  @override
  Widget build(BuildContext context) {

    var mediaHeigth = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;


    return Scaffold(

    backgroundColor: Colors.black,
      body:
      Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 2.0, right: 2.0),
              height: mediaHeigth * 0.6,
              child: const Center(
                child: Text(
                  '_',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
              height: mediaHeigth * 0.1,
              width: mediaWidth * 0.95,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  onSurface: Colors.white,
                ),
                onPressed: null,
                child: const Text("Vrai"),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
              height: mediaHeigth * 0.1,
              width: mediaWidth * 0.95,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  onSurface: Colors.white,
                ),
                onPressed: null,
                child: const Text("Faux"),
              ),
            )
          ],
        ),
      );

  }
}


