import 'package:dicee/pages/home_page/dice_ful.dart';
// import 'package:dicee/pages/home_page/dice_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double numberDice = 1.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "How many dice you need?",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white38,
                  value: numberDice,
                  onChanged: (val) {
                    setState(() {
                      numberDice = val.roundToDouble();
                    });
                  },
                  min: 1.0,
                  max: 6.0,
                  // divisions: 6,
                ),
                _createDice(),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: FlatButton(
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.white70, fontSize: 25.0),
                    ),
                    onPressed: () {
                      // final ScreenArguments args = settings.arguments;
                      print("DICE");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DiceFullPage(numberDice),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _createDice() {
    List<Widget> myDiceList = [];
    for (int x = 0; x < numberDice; x++) {
      myDiceList.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.white),
            // borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 3.0,
              height: 3.0,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0),
                // borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: myDiceList,
    );
  }
}
