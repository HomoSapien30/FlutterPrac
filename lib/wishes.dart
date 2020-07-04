import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishes extends StatelessWidget {
  final String image,name,content;
  Wishes({@required this.image,this.name,this.content});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black87
    ));
    var screenHeight =MediaQuery.of(context).size.height;
    var screenWidth =MediaQuery.of(context).size.width;
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.transparent,
            ),
            Container(
              height: screenHeight-screenHeight/3,
              width: screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Positioned(
              top: screenHeight-screenHeight/3 -25.0,
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                height: screenHeight / 3 + 25.0,
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Text(
                      name,
                      style: GoogleFonts.tinos(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Text(
                                content,
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                            SizedBox(height: 30,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0),bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25))
                ), ),

            ),
          ],
        ),
      ),
    );
  }
}
