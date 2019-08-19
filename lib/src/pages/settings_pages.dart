import 'package:flutter/material.dart';
import 'package:preferencias/src/widgets/menu_widget.dart';

class SettingsPage extends StatelessWidget {
  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: Column(
        children: <Widget>[
          Text('Ajustes Page:'),
          Divider(),
        ],
      ),
    );
  }
}
