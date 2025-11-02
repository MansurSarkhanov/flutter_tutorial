import 'package:flutter/material.dart';
import 'package:flutter_lessons/components/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pageList = [
    Container(
      color: Colors.amber,
      child: Center(
        child: TextWidget(text: 'HomePagee', textColor: Colors.white),
      ),
    ),
    Container(
      color: Colors.blueAccent,
      child: Center(
        child: TextWidget(text: 'SettingPage', textColor: Colors.white),
      ),
    )
  ];
  int currentPage = 0;

  void changePage(int value) {
    currentPage = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: TextWidget(text: 'Home', textColor: Colors.white),
      ),
      body: pageList[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == currentPage) return;
          changePage(value);
          setState(() {});
        },
        backgroundColor: Colors.greenAccent,
        elevation: 100,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
