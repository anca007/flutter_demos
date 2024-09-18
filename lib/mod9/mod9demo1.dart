import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Todo.dart';

void main() {
  runApp(DemoApi());
}

class DemoApi extends StatefulWidget {
  @override
  State<DemoApi> createState() => _DemoApiState();
}

class _DemoApiState extends State<DemoApi> {
  List<Todo> todos = [];

  void callApi() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var json = convert.jsonDecode(response.body);

      //vérifier que le json est une liste pour avoir accès à map
      if (json is List) {
        setState(() {
          todos =
              //utilisation de map pour créer des instances dynamiques
              List<Todo>.from(json.map((todoJson) => Todo.fromJson(todoJson)));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("APPEL API !"),
            ElevatedButton(onPressed: callApi, child: Text("CALL")),
            //ne pas oublier de mettre un expanded au listView pour lui donner une taille
            Expanded(
              child: ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    //permet le retour à la ligne direct si ça dépasse
                    return Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "${todos[index].title}",
                        ),
                        Checkbox(
                            value: todos[index].completed, onChanged: null)
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
