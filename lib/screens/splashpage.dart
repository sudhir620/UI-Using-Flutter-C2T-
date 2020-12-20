import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './home.dart';
import './loginpage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      backgroundColor: Colors.white,
      image: Image.asset('assets/images/loading.gif'),
      loaderColor: Colors.black,
      loadingText: Text('Loading...'),
      photoSize: 150.0,
      // navigateAfterSeconds: LoginPage(),
      navigateAfterSeconds: HomePage(),
    );
  }
}
