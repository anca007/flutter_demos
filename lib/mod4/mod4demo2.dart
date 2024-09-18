
void main(){
  display();
  int value = getNumber();
  print(value);

  //appel fonction avec paramètre
  displayMessage("Michel");

  //fonction avec paramètre optionnel
  displayNameAndAge();
  //nécessité de nommer les paramètres optionnels
  displayNameAndAge(age: 45, name: "Michel");
}

void display(){
  print("Hello !");
}

int getNumber(){
  return 12;
}

void displayMessage(String message){
  print("Hello ${message} !");
}

//valeur par défaut à null ou une valeur en particulier
//paramètre optionnel dans des accolades
void displayNameAndAge({String? name, int age = 18}){
  print("${name} a ${age} ans");
}

