import 'package:dawar_smart/pallete.dart';
import 'package:flutter/material.dart';
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
                  height: 150,
                  child: const Center(
                    child: Text("DawarAI", style: kHeading),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                    child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const TextField(
                          decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: kBodyText,
                      )),
                    )
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
