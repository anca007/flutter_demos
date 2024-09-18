import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//commencer par ça puis ->
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       //theme de l'application
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("DemoLayout"),
//         ),
//         //possibilité d'encapsuler un élément en faisant ALT + ENTREE
//         body: Container(),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //theme de l'application
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("DemoLayout"),
        ),
        //possibilité d'encapsuler un élément en faisant ALT + ENTREE
        body: SingleChildScrollView(
          child: Container(
            color: Colors.amberAccent,
            child: const Row(
              //ajout du crossAxisAlignment pour aligner en haut les colonnes
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2000),
                Expanded(child: Text("Colonne 1")),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Colonne 2 - Ligne 1"),
                    ),
                    Text("Colonne 2 - Ligne 2"),
                  ],
                ),
                Text("Colonne 3"),
                Flex(
                    direction: Axis.vertical,
                  children: [
                    Text("Flex - Colonne 4 - Ligne 1"),
                    Text("Flex - Colonne 4 - Ligne 2"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
