import 'package:dawar_smart/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/widgets.dart';
class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        bg_image(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 175,
                  child: const Center(
                    child: Text("DawarAI", style: kHeading),
                  ),
                ),
                const SizedBox(
                  height: 175,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: const [
                        TextInput(
                          icon: FontAwesomeIcons.solidEnvelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          g: true,
                        ),
                        TextInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Password',
                          inputType: TextInputType.visiblePassword,
                          inputAction: TextInputAction.done,
                          g: false,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}


