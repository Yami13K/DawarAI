import 'package:dawar_smart/Screens/mobility_features.dart';
import 'package:dawar_smart/Screens/zscreens.dart';
import 'package:dawar_smart/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/widgets.dart';
import 'Number_auth.dart';
import 'insert_page.dart';

class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        bg_image(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
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
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              const login_input(
                                icon: FontAwesomeIcons.solidEnvelope,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                                g: true,
                              ),
                              const login_input(
                                icon: FontAwesomeIcons.lock,
                                hint: 'Password',
                                inputType: TextInputType.visiblePassword,
                                inputAction: TextInputAction.done,
                                g: false,
                              ),
                              InkWell(
                                child: const Text(
                                  'Forgot Password?',
                                  style: kBodyText,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            mobility_features()),
                                  );
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              round_button(
                                S: 'login',
                                W: live_location(),
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              InkWell(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.white, width: 1))),
                                  child: const Text(
                                    'CreateNewAccount',
                                    style: kBodyText,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => create_account()),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const SizedBox(
                                height: 50,
                                width: 100,
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
