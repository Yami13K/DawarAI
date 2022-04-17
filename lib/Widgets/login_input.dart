import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Screens/Number_auth.dart';
import '../palette.dart';


class login_input extends StatelessWidget {
  const login_input({
    Key? key,
    this.icon,
    this.hint,
    required this.inputType,
    required this.inputAction,
    required this.g,
    this.border, this.w,
  }) : super(key: key);

  final IconData? icon;
  final String? hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool g;
  final bool? border;
  final Widget? w;
  onPressed (context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => w!),);
  }

  @override
  Widget build(BuildContext context) {
    if (border == false || border == null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    icon,
                    color: Colors.teal,
                    size: 25,
                  )),
              hintStyle: kBodyText,
            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
            obscureText: !g,
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          decoration: const InputDecoration(
            prefixText: '09',
            prefixStyle: bHeading,
          ),
          style: bHeading,
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,4}'))],
          keyboardType: inputType,
          textInputAction: inputAction,
          obscureText: !g,
          onFieldSubmitted: (_)=>onPressed(context) ,

        ),
      );
    }
  }
}
