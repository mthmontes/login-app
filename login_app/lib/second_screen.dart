// ignore_for_file: prefer_const_constructors, use_function_type_syntax_for_parameters, unused_import

import 'package:flutter/material.dart';
import 'package:my_app/login_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bem vindo ao meu APP!",
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            )
          ],
        ),
      ),
    );
  }
}
