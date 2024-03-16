import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/screens/home_screen.dart';
import 'package:to_do_provider/provider/task_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Todo Provider',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: false,
        ),
        // theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
