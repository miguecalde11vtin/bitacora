import 'package:flutter/material.dart';
import 'package:bitacora/bitacora/drawer.dart';
import 'package:bitacora/bitacora/pages/home_page.dart';

void main() {
  runApp(const Bitacora());
}

class Bitacora extends StatelessWidget {
  const Bitacora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.black, brightness: Brightness.light),
      title: "Bitacora",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            actions: <Widget>[
              IconButton(
                  icon:
                      const Icon(Icons.notifications_none, color: Colors.grey),
                  onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.search, color: Colors.grey),
                  onPressed: () {})
            ],
          ),
          drawer: const DrawerList(),
          body: const HomePage()),
    );
  }
}
