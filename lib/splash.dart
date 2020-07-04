import 'dart:async';
import 'package:birthday/cards.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{
  void initState()
  {
    super.initState();
    loadData();
  }
  Future<Timer> loadData() async{
    return new Timer(Duration(seconds: 6),onDoneloading);
  }
  onDoneloading() async{
     Navigator.of(context).pushReplacement(PageTransition(
        type: PageTransitionType.fade,
        child: Cards()
    ));
  }
  @override
  void dispose()
  {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}
