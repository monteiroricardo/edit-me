import 'package:flutter/material.dart';

import 'package:text_editing/components/build.app.dart';

import 'package:unicons/unicons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text("Edit me!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "V5Xtende",
            color: Colors.white,
          )),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            UniconsLine.share,
            color: Colors.white,
          ),
          onPressed: null,
        )
      ],
    );
    final alturaDisponivel = MediaQuery.of(context).size.height -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        child: BuildApp(),
      ),
    );
  }
}
