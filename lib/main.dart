import 'package:bored_app/SecondPage.dart';
import 'package:flutter/material.dart';

import 'services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Services ser= new Services();

    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=>SecondPage(
                        text: ser.pressed().toString(),
                      )
                  )
              );
            },
            child: Text('Click me!!')
        ),
      ),
    );
  }
}


