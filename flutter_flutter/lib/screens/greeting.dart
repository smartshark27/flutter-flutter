import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final _biggerFont = const TextStyle(fontSize: 32);
  const GreetingScreen(
      {Key? key, required this.firstName, required this.lastName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Greeter'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text(
              'Hello $firstName $lastName',
              style: _biggerFont,
            )),
      ),
    );
  }
}
