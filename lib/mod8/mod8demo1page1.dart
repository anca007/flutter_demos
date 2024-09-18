import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page 1")),
        body: Column(
          children: [
            Text("Page 1"),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(
                  context, '/page-deux',
                  arguments: 456
              );
            }, child: Text("GO TO page 2"))
          ],
        ));
  }
}
