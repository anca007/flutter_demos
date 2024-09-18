import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    int? id = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
        appBar: AppBar(title: Text("Page 2")),
        body: Text("Id passé depuis la page 1 => ${id}"));
  }
}