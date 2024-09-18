class Subject {
  String name;
  List<double> notes;

  Subject({required this.name, required this.notes});

  double average() {
    var sum = 0.0;

    for (double note in notes) {
      sum += note;
    }

    var average = sum / notes.length;
    print("La moyenne de la matière ${name} est ${num.parse(average.toStringAsFixed(2))}");
    return average;
  }
}

void main() {
  var french = Subject(name: "Français", notes: [10, 15, 20]);
  var maths = Subject(name: "Maths", notes: [0, 5, 2]);
  var it = Subject(name: "Informatique", notes: [12.45, 20]);

  List<Subject> list = [french, maths, it];

  getAverage(list);
}

double getAverage(List<Subject> list) {
  // list.forEach((subject) => {
  //
  //   int average = 0;
  //
  //
  // });
  double sum = 0;
  for (Subject s in list) {

    sum += s.average();
  }

  var globalAverage = sum / list.length;
  print("La moyenne générale est ${num.parse(globalAverage.toStringAsFixed(2))}");
  return globalAverage;
}
