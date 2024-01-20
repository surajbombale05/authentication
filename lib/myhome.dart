import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
      ),
      body: Center(
        child: Text("Welcome to My Home Page!"),
      ),
    );
  }
}
