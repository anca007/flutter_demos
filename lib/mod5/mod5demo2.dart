import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Demo Widget"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Ouais salut !",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
                //Soit on créer une instance du type demandé,
                //soit on utilise une méthode ou attribut de class
                //textScaler: TextScaler.linear(12),
              ),
              //sizebox permet de dimensionner des éléments
              SizedBox(
                //infinity permet de prendre toute la place
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    //style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Click !"),
                    )),
              ),
              SizedBox(height: 24),
              OutlinedButton(onPressed: () {}, child: Text("Ici c'est mieux !")),
              //il se peut que l'image soit trop grande ou protégé notamment à cause de droit d'auteur
              Image.network("https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png"),
              Image.asset('assets/yoda.webp'),
              ElevatedButton.icon(onPressed: (){}, label: Text("Youhou !"), icon: Icon(Icons.social_distance)),
              FilledButton(onPressed: () {}, child: Icon(Icons.ac_unit))
            ],
          ),
        ),
      ),
    );
  }
}
