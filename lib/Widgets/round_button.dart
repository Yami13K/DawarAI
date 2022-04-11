import 'package:flutter/material.dart';

import '../palette.dart';

class round_button extends StatelessWidget {
  round_button({
    Key? key, required this.S,  required this.W,
  }) : super(key: key);

  final String S;
  Widget W;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => W),);
          },
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              S,
              style: kBodyText,
            ),

          )),
    );
  }
}