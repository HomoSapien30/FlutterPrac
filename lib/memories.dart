import 'package:page_turn/page_turn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'PageTrans.dart';

class Memories extends StatefulWidget {
  const Memories({
    Key key,
  }) : super(key: key);

  @override
  _MemoriesState createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
  final _controller = GlobalKey<PageTurnState>();

  List imgList=[
    'assets/mem1.jpg',
    'assets/mem2.jpg',
    'assets/mem3.jpg',
    'assets/mem4.jpg',
    'assets/mem5.jpg',
    'assets/mem6.jpg',
    'assets/mem7.jpg',
    'assets/mem8.jpg',
    'assets/mem9.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTurn(
        key: _controller,
        backgroundColor: Colors.white,
        showDragCutoff: false,
        lastPage: Container(child: Center(child: Text('Last Page!'))),
        children: <Widget>[
          for (var i = 0; i <imgList.length; i++) PageTrans(url: imgList[i]),
        ]
      ),
    );
  }
}