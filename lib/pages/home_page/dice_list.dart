import 'package:dicee/pages/home_page/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DicePage extends StatelessWidget {
  double numberDice = 1;
  DicePage({Key key, this.numberDice = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _DicePageState args = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: InkWell(
          onTap: () {
            print("LAUCHN");
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
    return myDiceList;
  }
}
