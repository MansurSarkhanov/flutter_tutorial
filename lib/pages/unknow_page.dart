import 'package:flutter/material.dart';

class UnknowPage extends StatelessWidget {
  const UnknowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Unknow Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
