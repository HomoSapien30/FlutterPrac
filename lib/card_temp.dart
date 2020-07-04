import 'package:flutter/material.dart';

class CardTemp extends StatelessWidget {
  CardTemp({@required this.text, this.onPressed,this.size});
  final String text;
  final double size;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: InkWell(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: size,
                color: Colors.white,
                fontWeight: FontWeight.w100),
          ),
          onTap: onPressed,
        ),
      ),
      decoration: BoxDecoration(

        color: Colors.purpleAccent.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),

    );
  }
}
