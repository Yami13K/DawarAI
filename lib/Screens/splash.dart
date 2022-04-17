import 'package:flutter/material.dart';
import 'zscreens.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();

}

class _SplashState extends State<splash> with TickerProviderStateMixin {
  int _counter = 0;
  late AnimationController _animationController;
  late Animation<double> _animation;

  void _animate() {
    _animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2100));
    _navigateToHome();

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(_animationController);
    _animate();

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.repeat();
      }
    });
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => signin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Stack(
            alignment: Alignment.center,
            children: [
        Positioned(
        top: MediaQuery.of(context).size.height * 0.35,
        right: 0,
        left: 0,
        child: const Image(image: AssetImage('assets/images/dawar.png')),
      ),
      RotationTransition(
        turns: _animation,
      child: Positioned(
        top: MediaQuery
            .of(context)
            .size
            .height * 0.2,
        right: 1,
        left: 0,
        child: const Image(
            image: AssetImage('assets/images/people1.png'),
            fit: BoxFit.cover),
      ),),
      Positioned(
        top: MediaQuery
            .of(context)
            .size
            .height * 0.444,
        right: 0,
        left: 4,
        child: const Image(
          image: AssetImage('assets/images/car1.png'),
        ),
      )
        ],
      ),
    ),);
  }
}

