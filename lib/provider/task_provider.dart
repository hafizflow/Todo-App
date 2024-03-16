import 'package:flutter/material.dart';
import 'package:to_do_provider/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> todos = [];

  String? taskName;
  TextEditingController dateCont = TextEditingController();
  TextEditingController timeCont = TextEditingController();

  bool get isValid =>
      taskName!.isNotEmpty &&
      dateCont.text.isNotEmpty &&
      timeCont.text.isNotEmpty;

  setTitle(String? value) {
    taskName = value;
    notifyListeners();
  }

  setDate(DateTime? date) {}

  setTime(TimeOfDay? time) {}

  addTask() {
    final task = TaskModel(
      title: taskName!,
      date: dateCont.text,
      time: timeCont.text,
    );

    todos.add(task);
    notifyListeners();
  }
}
