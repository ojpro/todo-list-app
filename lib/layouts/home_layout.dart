import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentNavigationTabIndex = 0;

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
        currentIndex: currentNavigationTabIndex,
        onTap: ((index) {
          setState(() {
            currentNavigationTabIndex = index;
          });
        }),
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
