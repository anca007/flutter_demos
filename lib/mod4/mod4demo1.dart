void main(){

  int age = 18;
  print(age);

  int age2;
  //erreur à la compilation
  //print(age2);
  //il faut préciser le ?
  int? age3;
  print(age3);


  //typage optionnel il faut une valeur par défaut
  var firstname = "Sylvain"; //typage implicite vs typage explicite String firstname = Sylvain
  firstname = "Michel";

  //utilisation du const
  const lastname = "TROPEE";
  //lastname = "TJKl";

  //autres types
  bool isTrue = true;
  double number = 12;

  //nullable
  String? name = null;

  print(name);
  //vérification si null
  print(name?.toUpperCase());
  //assure au compilateur que ce n'est pas null
  print(name!.toUpperCase());

}

