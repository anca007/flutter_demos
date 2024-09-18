class Todo {

  int? userId, id;
  String? title;
  bool? completed;

  Todo({required this.userId, required this.id, required this.title, required this.completed});

  Todo.fromJson(Map<String, dynamic> data){
    userId = data['userId'];
    id = data['id'];
    title = data['title'];
    completed = data['completed'];
  }
}