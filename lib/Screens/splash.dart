import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> InitState();
}

class InitState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return initwidget();
  }
}

  initwidget(){
  return Scaffold(
    body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xff5591f),
            gradient: LinearGradient(
                colors: [Color(0xff5591f), Color(0xff2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
            )
          ),
        )
      ],
    )
  );}