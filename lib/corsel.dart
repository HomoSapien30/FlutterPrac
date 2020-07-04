import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Corsel extends StatefulWidget {
  Corsel() : super();
  @override
  _CorselState createState() => _CorselState();
}

class _CorselState extends State<Corsel> {
  CarouselSlider carouselSlider;
  int _current=0;
  List imgList=[
    'assets/nikita.jpg',
    'assets/muskn2.jpg',
    'assets/dhruv.jpg',
    'assets/charu.jpg',
    'assets/vaibhav.jpg',
    'assets/us3.jpg',
    'assets/harsh.jpg',
    'assets/aki.jpg',
    'assets/sari.jpg',
    'assets/bhanu.jpg',
    'assets/nav.jpg',
    'assets/pra.jpg',
    'assets/ktj.jpg',
    'assets/brij.jpg',
    'assets/rajjo.jpg'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider=CarouselSlider(
              options: CarouselOptions(
                height: 500,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                scrollDirection: Axis.horizontal,
                onPageChanged: callbackfunction(_current),

              ),
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                          image:DecorationImage(
                              image: AssetImage(imgUrl),
                              fit: BoxFit.fill
                          )
                      ),

                    );
                  },
                );
              }).toList(),

            )
          ],
        ),
      ),
    ) ;
  }

  callbackfunction(int index) {
    {
      setState(() {
        _current = index;
      });
    };
  }
}
