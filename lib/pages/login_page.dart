import 'package:flutter/material.dart';
import 'package:flutter_lessons/components/text_widget.dart';
import 'package:flutter_lessons/components/textfiled_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
  final RegExp emailRegex =
      RegExp(r"^(?=[a-zA-Z0-9@._%+-]{6,254}$)(?=.{1,64}@.{1,255}$)([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$");

  final String login = "Girst et";
  final Color fillColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        title: TextWidget(text: login, textColor: Colors.white),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Form(
                    key: emailKey,
                    child: TextfiledWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some email addreess';
                        } else if (emailRegex.hasMatch(value)) {
                          return null;
                        }
                        return 'Please enter a valid email address';
                      },
                      controller: emailController,
                      fillColor: fillColor,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.mail),
                      obscureText: false,
                    ),
                  ),
                  SizedBox(height: 16),
                  Form(
                    key: passwordKey,
                    child: TextfiledWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 7) {
                          return 'Password must be at least 7 characters';
                        }
                        return null;
                      },
                      controller: passwordController,
                      fillColor: fillColor,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                      padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                    ),
                    onPressed: () {
                      if (emailKey.currentState!.validate() && passwordKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed('home');
                      }
                    },
                    child: Center(child: TextWidget(text: login, textColor: Colors.white)),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60), side: BorderSide(color: Colors.blue))),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Center(child: TextWidget(text: "Qeydiyyatdan kec", textColor: Colors.blue)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
