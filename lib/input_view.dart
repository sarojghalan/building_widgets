// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class InputView extends StatefulWidget {
  const InputView({super.key});

  @override
  State<InputView> createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  TextEditingController myController = TextEditingController();

  String _greetingMessage = "";

  void greetUser() {
    setState(() {
      _greetingMessage = "Hello" + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text(_greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name please"),
              ),
              ElevatedButton(onPressed: greetUser, child: Text('Tap'))
            ],
          ),
        ),
      ),
    );
  }
}
