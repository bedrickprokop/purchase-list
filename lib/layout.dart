import 'package:flutter/material.dart';
import 'package:purchase_list_app/pages/settings.dart';
import 'pages/about.dart';
import 'pages/home.dart';

class Layout {

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag
  ];

  static int currItem = 0;

  static Scaffold getContent(BuildContext context, content) {

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromRGBO(150,150, 150, 1),
        backgroundColor: primary(),
        title: Center(
          child: Text('PurchaseList'),
        ),
      ),
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currItem,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), title: Text('Sobre')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Configurações'))
        ],
        fixedColor: primary(),
        onTap: (int i) {
          currItem = i;
          Navigator.of(context).pushNamed(pages[i]);
        },
      ),
    );
  }
  
  
  static Color primary([ double opacity = 1]) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondary([ double opacity = 1]) => Color.fromRGBO(111, 168, 191, opacity);
  static Color light([ double opacity = 1]) => Color.fromRGBO(242, 234, 228, opacity);
  static Color dark([ double opacity = 1]) => Color.fromRGBO(51, 51, 51, opacity);

  static Color danger([ double opacity = 1]) => Color.fromRGBO(217, 74, 74, opacity);
  static Color success([ double opacity = 1]) => Color.fromRGBO(6, 166, 59, opacity);
  static Color info([ double opacity = 1]) => Color.fromRGBO(0, 122, 166, opacity);
  static Color warning([ double opacity = 1]) => Color.fromRGBO(166, 134, 0, opacity);
}