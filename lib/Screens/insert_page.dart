import 'package:flutter/material.dart';

class insert_page extends StatelessWidget {
  const insert_page({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              right: 0,
              left: 0,
              child: const Image(image: AssetImage('assets/images/dawar.png')),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              right: 1,
              left: 0,
              child: const Image(
                  image: AssetImage('assets/images/people1.png'),
                  fit: BoxFit.cover),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.39,
              right: 0,
              left: 4,
              child: const Image(
                image: AssetImage('assets/images/car1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
