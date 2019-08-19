import 'package:flutter/material.dart';
import 'package:preferencias/src/shared_prefs/preferencias_usuario.dart';
import 'package:preferencias/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color segundario:'),
          Divider(),
          Text('Genera: ${prefs.genero}'),
          Divider(),
          Text('Nombre usuario:'),
          Divider(),
        ],
      ),
    );
  }

  // Drawer _crearMenu(BuildContext context) {
  //   return Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: <Widget>[
  //         DrawerHeader(
  //           child: Container(),
  //           decoration: BoxDecoration(
  //               image: DecorationImage(
  //                   image: AssetImage('assets/menu-img.jpg'),
  //                   fit: BoxFit.cover)),
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.pages, color: Colors.blue),
  //           title: Text('Home'),
  //           onTap: () =>
  //               Navigator.pushReplacementNamed(context, HomePage.routeName),
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.party_mode, color: Colors.blue),
  //           title: Text('Party Mode'),
  //           onTap: () => print('Party Mode'),
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.people, color: Colors.blue),
  //           title: Text('People'),
  //           onTap: () => print('People'),
  //         ),
  //         ListTile(
  //           leading: Icon(Icons.settings, color: Colors.blue),
  //           title: Text('Ajustes'),
  //           onTap: () =>
  //               Navigator.pushReplacementNamed(context, SettingsPage.routeName),
  //         ),
  //       ],
  //     ),
  //   );
  // }

}
