import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/home_screen.dart';
import 'package:to_do_provider/todo_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        title: 'Todo Provider',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
