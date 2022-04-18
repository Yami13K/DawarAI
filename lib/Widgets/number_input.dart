import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Screens/Number_auth.dart';
import '../palette.dart';

class number_input extends StatelessWidget {
  const number_input({
    Key? key,
    this.icon,
    this.hint,
    required this.inputType,
    required this.inputAction,
    required this.g,
    this.border,
    this.w,
  }) : super(key: key);

  final IconData? icon;
  final String? hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool g;
  final bool? border;
  final Widget? w;

  onPressed(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => w!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration: const InputDecoration(
          prefixText: '09',
          prefixStyle: bHeading,
        ),
        style: bHeading,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,4}'))
        ],
        keyboardType: inputType,
        textInputAction: inputAction,
        obscureText: !g,
        onFieldSubmitted: (_) => onPressed(context),
      ),
    );
  }
}
