import 'package:dawar_smart/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/widgets.dart';
import 'live_location.dart';

class create_account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Container(
                        height: 69,
                        child: const Center(
                          child: Text(
                            "Let's start with creating your account.",
                            style: bHeading,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  signup_input(
                                    hint: 'Username',
                                  ),
                                  signup_input(
                                    hint: 'Email',
                                  ),
                                  signup_input(
                                    hint: 'Password',
                                  ),
                                  signup_input(
                                    hint: 'National_ID',
                                  ),
                                  signup_input(
                                    hint: 'Phone',
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 75,
                                  ),
                                  round_button(
                                    S: 'Register',
                                    W: live_location(),
                                  ),
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
