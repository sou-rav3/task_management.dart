import 'package:flutter/material.dart';
import 'package:task_management/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: _inputDecorationTheme(),
        textTheme: const TextTheme(),
      ),
      home: const SplashScreen(),
    );
  }

  InputDecorationTheme _inputDecorationTheme(){
    return InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      border: _inputBorder(),
      enabledBorder: _inputBorder(),
      errorBorder: _inputBorder(),
      focusedBorder: _inputBorder(),
    );
  }


  OutlineInputBorder _inputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8));
  }
}
