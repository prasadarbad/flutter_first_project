import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("TackMeco"),
         centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("welcome to TackMeco"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
