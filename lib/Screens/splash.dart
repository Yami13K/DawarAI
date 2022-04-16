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
      if(status == AnimationStatus.completed) {
        _animationController.reverse();
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

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color( 0xff1b726c),
              child: Column(
                children: [
                  Container(
                  child: Image.asset('assets/images/l.png'),
                  ),
                  RotationTransition(
                    turns: _animation,
                    child: Container(
                      child: Image.asset('assets/images/l1.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
