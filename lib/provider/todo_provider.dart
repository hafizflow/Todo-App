import 'package:flutter/cupertino.dart';
import 'package:to_do_provider/models/todo_model.dart';

class TodoProvider extends ChangeNotifier {
  List<TodoModel> todos = [];

  void addTodo() {
    TodoModel todoModel = TodoModel(
      title: 'Work',
      date: '',
      time: '',
    );

    todos.add(todoModel);
    notifyListeners();
  }
}
