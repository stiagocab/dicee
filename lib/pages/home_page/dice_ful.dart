import 'package:dicee/pages/home_page/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiceFullPage extends StatefulWidget {
  double numberDice = 1;
  DiceFullPage(
    this.numberDice,
  );

  @override
  _DiceFullPageState createState() => _DiceFullPageState(numberDice);
}

class _DiceFullPageState extends State<DiceFullPage> {
  double numberDice = 1;
  bool isVisible = true;
  _DiceFullPageState(
    this.numberDice,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: InkWell(
          onTap: () {
            setState(() {
              isVisible = false;
            });
            setState(() {
              isVisible = true;
            });
          },
          child: Center(
            child: Wrap(
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10.0,
              children: _createDice(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _createDice() {
    List<Widget> myDiceList = [];
    for (int x = 0; x < numberDice; x++) {
      myDiceList.add(DiceWidget());
    }
    return isVisible ? myDiceList : [];
  }
}
