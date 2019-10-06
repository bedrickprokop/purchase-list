import 'package:flutter/material.dart';
import 'package:purchase_list_app/layout.dart';

class SettingsPage extends StatelessWidget {

  static String tag = 'settings-page';

  @override
  Widget build(BuildContext context) {

    return Layout.getContent(context, Center(
      child: Text('Configurações',
      style: TextStyle(color: Layout.dark())),
    ));

  }

}