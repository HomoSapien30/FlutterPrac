import 'package:flutter/material.dart';

class PageTrans extends StatelessWidget {

  PageTrans({@required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              image:DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.fill
              )
          ),
        ),
      ]
    );
  }
}
