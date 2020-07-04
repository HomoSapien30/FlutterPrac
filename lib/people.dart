import 'package:birthday/card_temp.dart';
import 'package:birthday/wishes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class People extends StatelessWidget {
  final double size=20;
  @override
  Widget build(BuildContext context) {
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
            child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              children: <Widget>[
                CardTemp(
                  text: "Nikuu",
                  size: size,
                  onPressed: (){
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.downToUp,
                        child:  Wishes(
                          content: "bla bla bla",
                          name:"-to sneha",
                          image: "assets/download.jpg",
                        )
                    ));
                  }
                ),
                CardTemp(
                    text: "Muskii",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "bhusee",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Akii",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Hersheys",
                    size:size,
                    onPressed: ()async{
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Kshitij",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Birjuu",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Bhanu",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Vaibhav",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "navdeep",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Dhruv",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),

                CardTemp(
                    text: "Pravesh",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                  size: size,
                    text: "Rajoooo",
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content:
                                "bla bla bla",
                            name:"-To ",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                ),
                CardTemp(
                    text: "Saarii",
                    size: size,
                    onPressed: (){
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.downToUp,
                          child:  Wishes(
                            content: "bla bla bla",
                            name:"-to",
                            image: "assets/download.jpg",
                          )
                      ));
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}

