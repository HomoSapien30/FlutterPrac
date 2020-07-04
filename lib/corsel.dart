import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Corsel extends StatefulWidget {
  Corsel() : super();
  @override
  _CorselState createState() => _CorselState();
}

class _CorselState extends State<Corsel> {
  List<Color> textColor = [Colors.black, Colors.white];
  List<Color> buttonColor = [Colors.white, Colors.black];
  CarouselSlider carouselSlider;
  int _current = 0;
  int current = 0;
  List imgList = [
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

  colorChanger(current) {
    setState(() {
      current = current + 1;
    });
  }

  zoom(String imgUrl) async {
    const url =
        "https://us04web.zoom.us/j/6258539667?pwd=UjZGMS91MDE4ZHZmL3UxUVY2QkZZdz09";
    if (imgUrl == 'assets/surprise.jpg') {
      print("hello");
      if (await canLaunch(url)) {
        await launch(url);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              options: CarouselOptions(
                height: 500,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: false,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                scrollDirection: Axis.horizontal,
                onPageChanged: callbackfunction(_current),
              ),
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    //print(imgUrl);
                    return Container(
                      child: GestureDetector(
                        onTap: () => zoom(imgUrl),
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage(imgUrl), fit: BoxFit.fill)),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  callbackfunction(int index) {
    {
      setState(() {
        _current = index;
      });
    }
    ;
  }
}
