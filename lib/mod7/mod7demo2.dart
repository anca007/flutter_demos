import 'package:flutter/material.dart';

class DemoFormWidget extends StatefulWidget {
  @override
  State<DemoFormWidget> createState() => _DemoFormWidgetState();
}

class _DemoFormWidgetState extends State<DemoFormWidget> {
  bool? isSympa = false;
  int gender = 0;

  var _formKey = GlobalKey<FormState>();

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return "Ce champs ne peut-être vide !";
    }
    if (value.length < 2) {
      return "Veuillez saisir au moins 2 caractères !";
    }
    return null;
  }

  String? validateAge(String? value) {
    //mettre un r devant la regex pour la définir
    if (!RegExp(r'\d+').hasMatch(value!)) {
      return "Veuillez saisir un nombre !";
    }
    return null;
  }

  String? validateColor(String? value) {
    List<String> colors = ["red", "green", "blue"];

    if (value == null) {
      return "Veuillez choisir une couleur !";
    }

    if (!colors.contains(value)) {
      return "Couleur non valide !";
    }
    return null;
  }

  bool isRadioChecked = true;

  void onSubmit() {
    //pas de controle métier, juste controle des données
    if (_formKey.currentState!.validate()) {
      //appel à un service
    }
    if (validateRadio() != null) {
      isRadioChecked = false;
    }
  }

  String? validateRadio() {
    if (gender == 0) {
      return "Veuillez sélectionner un genre !";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
                validator: validateName,
                decoration: InputDecoration(
                    labelText: "Nom", hintText: "Veuillez saisir votre email")),
            TextFormField(
                validator: validateAge,
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number),
            DropdownButtonFormField(
                validator: validateColor,
                items: [
                  DropdownMenuItem<String>(
                      child: Text("- Choisir une couleur -"), value: null),
                  DropdownMenuItem<String>(child: Text("Rouge"), value: "red"),
                  DropdownMenuItem<String>(child: Text("Vert"), value: "green"),
                  DropdownMenuItem<String>(child: Text("Bleu"), value: "blue"),
                ],
                onChanged: (value) {}),
            Row(
              children: [
                Text("Sympa ?"),
                Checkbox(
                    value: isSympa,
                    onChanged: (value) {
                      setState(() {
                        isSympa = value;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Radio<int>(
                    value: 1,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                Text("Homme"),
                Radio<int>(
                    value: 2,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                Text("Femme")
              ],
            ),
            //par d'accolades pour les if placés ici pour une ligne
            //sinon utilisé ...[]
            if (!isRadioChecked)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(validateRadio() != null ? validateRadio()! : "",
                    style: TextStyle(color: Color(0xFFc2504c))),
              ),
            ElevatedButton(onPressed: onSubmit, child: Text("Valider"))
          ],
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DemoFormWidget(),
      ),
    );
  }
}

void main() {
  runApp(HomePage());
}
