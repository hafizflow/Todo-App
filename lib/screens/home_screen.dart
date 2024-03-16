import 'package:flutter/material.dart';
import 'package:to_do_provider/widgets/custom_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: const Text('Have to work'),
            subtitle: const Text('Tomorrow'),
            trailing: Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
          ),
        ),
        itemCount: 5,
      ),
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
