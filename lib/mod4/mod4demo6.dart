
void wait2SecBeforePrint() async {

  print("avant l'attente");
  //j'attends 2 secondes
  await Future.delayed(Duration(seconds: 2));
  print("C'est bon !");
}

//obligation d'encapsuler le retour de la fonction dans la class Future
// String getFirstname() async{}
Future<String> getFirstname() async{
  print("avant michel");
  await Future.delayed(Duration(seconds: 2));
  return "Michel";
}

//les appels aux fonctions se font sucessivement sans attendre le retour  de chacune
void main() async{
  wait2SecBeforePrint();

  String name = await getFirstname();
  print(name);
}