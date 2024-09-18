class AttributeComponent<T> {
  T value;

  AttributeComponent(this.value);

  T getValue() {
    return value;
  }
}

void main(){

  var a = AttributeComponent<int>(10);
  print(a.getValue());

  var b = AttributeComponent<String>("Michel");
  print(b.getValue());

  //utilisation des listes DART
  List<int> values = [1,2,3,4,5];
}
