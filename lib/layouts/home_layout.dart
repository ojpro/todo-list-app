import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list_app/modules/tasks/archived.dart';
import 'package:todo_list_app/modules/tasks/done.dart';
import 'package:todo_list_app/modules/tasks/todo.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentNavigationTabIndex = 0;

  List<Widget> navigationScreens = [
    TodoScreen(),
    DoneScreen(),
    ArchivedScreen()
  ];

  List<String> appBarTitles = [
    "Todo",
    "Done",
    "Archived",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitles[currentNavigationTabIndex],
        ),
      ),
      body: navigationScreens[currentNavigationTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentNavigationTabIndex,
        onTap: ((index) {
          setState(() {
            currentNavigationTabIndex = index;
          });
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: "Todo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
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
