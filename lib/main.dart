import 'package:flutter/material.dart';
import 'package:preferencias/src/pages/home_page.dart';
import 'package:preferencias/src/pages/settings_pages.dart';
import 'package:preferencias/src/shared_prefs/preferencias_usuario.dart';

void main() async {
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias APP',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
