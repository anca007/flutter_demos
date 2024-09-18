class Person{
  String? firstname;
  int? age;
  int? money;

  //constructeur, required permet de nommer un paramètre obligatoire
  //ne peut pas avoir 2 constructeurs avec le même nom
  Person({required this.firstname, required this.age, this.money = 0});

  //constructeur nommé, dynamic permet de valider n'importe quel type
  Person.fromJson(Map<String, dynamic> data) {
    firstname = data["firstname"];
    age = data["age"];
    money = data["money"];
  }

  //appel à d'autres constructeur
  Person.somebody() : this(firstname: "Luigi", age: 45);

  @override
  String toString() {
    // TODO: implement toString
    return "${firstname} a ${age} ans et est " + (money! > 0 ? "riche" : "pauvre");
  }
}

void main(){

  var p1 = Person(firstname: "Michel", age: 38);
  print(p1);

  Person p2 = Person(firstname: "Jean", age: 29, money: 85);
  print(p2);
  
  var p3 = Person.fromJson({"firstname" : "Bernad", "age" : 96, "money" : 520});
  print(p3);

  var p4 = Person.somebody();
  print(p4);

}
