// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
              style: TextStyle(fontSize: 15.0, fontFamily: 'Sora'),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  hintText: "Entre aqui!",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Password:",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 15.0,
              ),
            ),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: "Digite a sua senha:",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () => {debugPrint("Confirmando...")},
              child: Text("Login!"),
              style: TextButton.styleFrom(
                  fixedSize: Size.fromWidth(150),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Login With Google, Twitter or Apple",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                onPressed: () => {debugPrint("Using the Google")},
                icon: Icon(MdiIcons.google),
                iconSize: 35.0,
              ),
              IconButton(
                onPressed: () => {debugPrint("Using the Twitter")},
                icon: Icon(MdiIcons.twitter),
                iconSize: 35.0,
              ),
              IconButton(
                onPressed: () => {debugPrint("Using the Apple")},
                icon: Icon(MdiIcons.apple),
                iconSize: 35.0,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
