import 'package:flutter/material.dart';
import 'package:hive_database/stack_page.dart';
import 'image_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackPage(
      ),
    );
  }
}
