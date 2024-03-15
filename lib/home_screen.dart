import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/constant/constant.dart';
import 'package:to_do_provider/todo_provider.dart';
import 'package:to_do_provider/widgets/CustomDialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todos'),
        centerTitle: true,
      ),
      body: Consumer<TodoProvider>(builder: (context, todoProvider, child) {
        return ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text('${todoProvider.todos[index].title} ${index + 1}'),
            subtitle:
                Text('${todoProvider.todos[index].description} ${index + 1}'),
            trailing: const Icon(
              Icons.check_circle,
              color: Colors.deepPurple,
            ),
          ),
          separatorBuilder: (_, __) => const Divider(color: primary),
          itemCount: todoProvider.todos.length,
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const CustomDialog(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
