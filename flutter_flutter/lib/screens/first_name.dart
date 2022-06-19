// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'last_name.dart';

class FirstNameFormScreen extends StatefulWidget {
  const FirstNameFormScreen({Key? key}) : super(key: key);

  @override
  State<FirstNameFormScreen> createState() => _FirstNameFormScreenState();
}

class _FirstNameFormScreenState extends State<FirstNameFormScreen> {
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
                  labelText: 'Enter your first name'),
              onFieldSubmitted: (name) {
                _navigateToNextScreen(context, name);
              },
            )),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context, String firstName) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LastNameFormScreen(firstName: firstName)));
  }
}
