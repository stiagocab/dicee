import 'package:flutter/material.dart';
import 'package:dicee/pages/home_page/dice_list.dart';
import 'package:dicee/pages/home_page/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/dice': (
      BuildContext context,
    ) =>
        DicePage()
  };
}
