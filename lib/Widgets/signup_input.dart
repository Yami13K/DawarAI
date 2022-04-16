import 'package:flutter/material.dart';

import '../palette.dart';

class signup_input extends StatelessWidget {
  const signup_input({
    Key? key, required this.hint,

  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          TextField(
            style: bBodyText,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
              labelText: hint,


            ),

          ),

        ],
      ),
    );
  }
}
