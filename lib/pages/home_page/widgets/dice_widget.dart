import 'dart:math';

import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  // int val = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.width * 0.3,
        margin: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          border: Border.all(width: 5.0, color: Colors.white),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: _printNumbers(context),
      ),
    );
  }

  Widget _printDot({double horizontal = 10.0, double vertical = 0}) {
    return Container(
      width: 20.0,
      height: 20.0,
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: CircleAvatar(backgroundColor: Colors.white),
    );
  }

  Widget _printNumbers(BuildContext context) {
    Random random = Random();
    int num = random.nextInt(6);
    // int num = 5;

    switch (num) {
      case 0:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[_printDot()],
        );
      case 1:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _printDot(),
            _printDot(),
          ],
        );
      case 2:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _printDot(horizontal: 0.0),
            _printDot(horizontal: 10.0),
            _printDot(horizontal: 0.0),
          ],
        );
      case 3:
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 10.0, vertical: 10.0),
                  _printDot(horizontal: 10.0, vertical: 10.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 10.0, vertical: 10.0),
                  _printDot(horizontal: 10.0, vertical: 10.0),
                ],
              ),
            ]);
      case 4:
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 15.0, vertical: 5.0),
                  _printDot(horizontal: 15.0, vertical: 5.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 15.0, vertical: 5.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 15.0, vertical: 5.0),
                  _printDot(horizontal: 15.0, vertical: 5.0),
                ],
              ),
            ]);
      case 5:
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 8.0, vertical: 10.0),
                  _printDot(horizontal: 8.0, vertical: 10.0),
                  _printDot(horizontal: 8.0, vertical: 10.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _printDot(horizontal: 8.0, vertical: 10.0),
                  _printDot(horizontal: 8.0, vertical: 10.0),
                  _printDot(horizontal: 8.0, vertical: 10.0),
                ],
              ),
            ]);
    }

    return Container(
      // width: MediaQuery.of(context).size.width * 0.1,
      // height: MediaQuery.of(context).size.width * 0.1,
      // margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.white),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
