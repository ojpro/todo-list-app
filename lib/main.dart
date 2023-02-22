import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list_app/layouts/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
