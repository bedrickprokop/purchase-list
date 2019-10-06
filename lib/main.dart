import 'package:flutter/material.dart';
import 'package:purchase_list_app/pages/about.dart';
import 'package:purchase_list_app/pages/settings.dart';
import 'pages/home.dart';
import 'layout.dart';

void main() => runApp(PurchaseList());

class PurchaseList extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage()
  };

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'PurchaseList',
      theme: ThemeData(
        primaryColor: Layout.primary(),
        //primaryColorDark: Layout.primary(),
        //Cor de contraste
        accentColor: Layout.secondary(),
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, color: Layout.primary()),
          body1: TextStyle(fontSize: 14)
        )
      ),
      home: HomePage(),
      routes: routes,
    );
  }

}