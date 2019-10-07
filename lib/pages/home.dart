import 'package:flutter/material.dart';
import 'package:purchase_list_app/layout.dart';
import 'package:purchase_list_app/widgets/HomeList.dart';

class HomePage extends StatelessWidget {

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final content = HomeList();

    return Layout.getContent(context, content);
  }

}