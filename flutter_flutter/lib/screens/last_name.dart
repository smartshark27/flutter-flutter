import 'package:flutter/material.dart';

import 'greeting.dart';

class LastNameFormScreen extends StatefulWidget {
  final String firstName;
  const LastNameFormScreen({Key? key, required this.firstName})
      : super(key: key);

  @override
  State<LastNameFormScreen> createState() => _LastNameFormScreenState();
}

class _LastNameFormScreenState extends State<LastNameFormScreen> {
  final _biggerFont = const TextStyle(fontSize: 32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Greeter'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
            child: TextFormField(
              style: _biggerFont,
              autofocus: true,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),

                  labelText: 'Enter your last name'),
              onFieldSubmitted: (name) {
                _navigateToNextScreen(context, name);
              },
            )),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context, String lastName) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            GreetingScreen(firstName: widget.firstName, lastName: lastName)));
  }
}
