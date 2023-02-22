import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: const SafeArea(
        child: Center(
          child: Text("World!"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        elevation: 0,
        child: const Icon(Icons.add),
      ),
    );
  }
}
