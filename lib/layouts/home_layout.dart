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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Todo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: "Done",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: "Archived",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        elevation: 0,
        child: const Icon(Icons.add),
      ),
    );
  }
}
