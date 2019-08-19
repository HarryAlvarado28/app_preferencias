import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static final String routeName = 'settings';
  // const HomePage ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Column(
        children: <Widget>[
          Text('Ajustes Page:'),
          Divider(),
          // Text('Genera:'),
          // Divider(),
          // Text('Nombre usuario:'),
          // Divider(),
        ],
      ),
    );
  }
}
