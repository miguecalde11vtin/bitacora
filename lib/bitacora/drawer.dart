// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: const Color.fromARGB(245, 245, 245, 245),
            child: ListView(children: <Widget>[
              Container(
                  child: UserAccountsDrawerHeader(
                      decoration: const BoxDecoration(color: Colors.white),
                      accountName: const Text("Ali Anil Kocak",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.black)),
                      accountEmail: const Text("See profile",
                          style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                      currentAccountPicture: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://webkit.org/demos/srcset/image-1x.png")))))),
              Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: const Text("Home",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black))),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: const Text("Audio",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black))),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: const Text("Bookmarks",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black))),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: const Text("Interests",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black))),
                    ],
                  )),
              const Divider(height: 2.0),
              Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: const Text("Become a member",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(245, 2, 158, 116))))
                      ])),
              const Divider(height: 2.0),
              Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: const Text("Story",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black45))),
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: const Text("Statistic",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black45))),
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: const Text("Stories",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black45)))
                      ])),
              Container(
                  padding: const EdgeInsets.only(bottom: 32, left: 16.0),
                  child: Row(children: <Widget>[
                    Icon(FontAwesomeIcons.medium),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 32),
                        child: const Text("Settings",
                            style: TextStyle(
                                fontSize: 16, color: Colors.black45))),
                    Container(
                        margin: const EdgeInsets.only(bottom: 2, left: 1),
                        child: const Text("Help",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black45)))
                  ])),
            ])));
  }
}
