import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              obscureText: !isVisible,
              decoration: const InputDecoration(label: Text("Password")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  size: 32,
                    isVisible ? Icons.remove_red_eye_outlined : Icons.remove_red_eye_sharp
                ),
                Switch(
                    value: isVisible,
                    onChanged: (b) {
                      setState(() {
                        isVisible = b;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
