import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dawar_smart/Widgets/widgets.dart';
import 'number_auth.dart';

import '../palette.dart';
import 'live_location.dart';


class number_in extends StatelessWidget {
  const number_in({Key? key}) : super(key: key);

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
              child: const number_input(
                border: true,
                g: true,
                inputAction: TextInputAction.done,
                inputType:TextInputType.numberWithOptions(signed: true, decimal: true),
                w:number_auth(),
              )
          )
        ],
      ),
    );
  }
}
