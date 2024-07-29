import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/home_view.dart';
import 'package:todo_app/features/todo/presentaion/views_models/views/todo_view.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _currentIndex = 0;
  final List<Widget> screens = const [HomeView(), TodoView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.transparent,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.description_outlined),
              selectedIcon: Icon(Icons.description_rounded),
              label: 'Notes'),
          NavigationDestination(
              icon: Icon(Icons.check_box_outlined),
              selectedIcon: Icon(Icons.check_box_rounded),
              label: 'To-do'),
        ],
        indicatorColor: Colors.transparent,
        indicatorShape: const CircleBorder(),
        onDestinationSelected: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedIndex: _currentIndex,
      ),
      body: screens[_currentIndex],
    );
  }
}
