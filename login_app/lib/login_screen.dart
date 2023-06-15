// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Entre com seu login:",
              textAlign: TextAlign.left,
            ),
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(hintText: "Entre aqui!"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Password:",
              textAlign: TextAlign.left,
            ),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              cursorColor: Colors.white,
              decoration: InputDecoration(hintText: "Digite a sua senha:"),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () => {debugPrint("Confirmando...")},
              child: Text("Login!"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
