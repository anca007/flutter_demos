import 'package:flutter/material.dart';

void main() {
  runApp(CounterWidget());
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return CounterWidgetState();
  }
}

class CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void add() {
    setState(() {
      counter++;
    });
  }

  void minus() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(counter.toString()),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      add();

                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      minus();
                    },
                    icon: Icon(Icons.minimize)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
