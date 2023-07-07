// ignore_for_file: prefer_const_constructors, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';

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
                debugPrint("Ainda não estou retornando pra casa.");
              },
              icon: Icon(Icons.arrow_back),
            )
          ],
        ),
      ),
    );
  }
}
