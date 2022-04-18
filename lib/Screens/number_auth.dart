import 'package:flutter/material.dart';

import '../Widgets/login_input.dart';
import '../Widgets/round_button.dart';
import '../palette.dart';
import 'live_location.dart';


class number_auth extends StatelessWidget {
  const number_auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              left: 0,
              right: 0,
              child: const Text(
                'Enter your number',
                textAlign: TextAlign.start,
                style: bHeading,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: 0,
              right: 0,
              child: const login_input(
                  border: true,
                  g: true,
                  inputAction: TextInputAction.done,
                  inputType:TextInputType.numberWithOptions(signed: true, decimal: true),
                w: number_auth(),
              ))
          ,Positioned(
            top: MediaQuery.of(context).size.height * 0.8,
            left: 0,
            right: 0,
            child: const round_button(
              S: 'login',
              W: live_location(),
            ),
          ),
        ],
      ),

    );
  }
}
