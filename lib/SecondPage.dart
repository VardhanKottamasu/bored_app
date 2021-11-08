import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(text)
      ),
    );
  }
  SecondPage({required this.text});
}
