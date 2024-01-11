import 'package:flutter/material.dart';
import 'package:hello_flutter/home.dart';
import 'package:hello_flutter/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 10), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Nguyễn Công Phát 20110693',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}