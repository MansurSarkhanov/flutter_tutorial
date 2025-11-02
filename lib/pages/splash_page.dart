import 'package:flutter/material.dart';
import 'package:flutter_lessons/components/text_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
     Future.delayed(Duration(seconds: 5), () => Navigator.of(context).pushReplacementNamed('login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Colors.teal),
            SizedBox(height: 12),
            TextWidget(text: 'Loading...', textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
