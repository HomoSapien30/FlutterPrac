import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.green,
          image:DecorationImage(
              image:AssetImage('assets/biodata.jpeg'),
              fit: BoxFit.cover
          )
      ),

    );
  }
}
