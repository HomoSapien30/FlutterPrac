import 'dart:ui';
import 'package:birthday/card_temp.dart';
import 'package:birthday/images.dart';
import 'package:birthday/memories.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Profile.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black
    ));
    var crnt=DateTime.now();
    var day=crnt.day;
    var month=crnt.month;
    var year=crnt.year;
    var y=year-2000;
    var diff=crnt.difference(new DateTime.utc(2000,7,5));
    var diff2;
    if(month<=7 && day<5 )
      diff2=DateTime.utc(year,7,5).difference(crnt);
    else
      diff2=DateTime.utc(year+1,7,5).difference(crnt);
    var d2=diff2.inDays;
    var d= (diff.inDays/365).floor();
    String t,t2,t3;
    if(day==5 && month==7) {
      t = "Hey! Today's your birthday!!";
      t2="You are $d years old now!";
      t3="See what close ones have to say!";
    }
    else {
      t = "Oops! Not your birthday Today!";
      t2="Wait for $d2 days!";
      t3="Let's refresh past memories!";
    }
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ballon.jpg"),
                  fit:BoxFit.cover,
                )
            ),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                      t,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    )
                ),
                SizedBox(height: 20,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CardTemp(
                          text: day.toString(),
                          size: 50,
                          onPressed:(){}),
                      CardTemp(
                          text:month.toString(),
                          size:50,
                          onPressed:(){}),
                      CardTemp(
                          text: y.toString(),
                          size: 50,
                          onPressed:(){}),
                    ]
                ),
                SizedBox(height: 20,),
                Container(
                    child: Text(
                      t2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    )
                ),
                SizedBox(height: 20,),
                Container(
                    child: Text(
                      t3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w200),
                    )
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: ()
                        {
                          Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Memories(),
                          ));
                        },
                      ),

                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: ()
                        {
                          Navigator.push(context, PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: Images(),
                          ));
                        },
                      )
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.expand_more),
                      iconSize: 100,
                      color: Colors.white,
                      onPressed: ()
                      {
                        Navigator.push(context, PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Profile(),
                        ));
                      },
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}

