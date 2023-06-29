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
      backgroundColor: Color(0xffD7E7F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.left,
              "Hello, Again!",
              style: TextStyle(fontSize: 30.0, fontFamily: 'Sora'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.left,
              "Welcome back you've been missed!",
              style: TextStyle(fontSize: 15.0, fontFamily: 'Sora'),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(20.0),
                hintStyle: TextStyle(
                    color: Color(0xffBCB5BF),
                    fontSize: 15.0,
                    fontFamily: 'Sora'),
                hintText: "Enter username",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Color(0xffBCB5BF),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color(0xffBCB5BF),
                        fontSize: 14.0,
                        fontFamily: 'Sora'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () => {debugPrint("Confirmando...")},
              child: Text("Sign In!"),
              style: TextButton.styleFrom(
                  textStyle: TextStyle(fontFamily: 'Sora', fontSize: 15.0),
                  padding: EdgeInsets.all(15.0),
                  fixedSize: Size.fromWidth(350),
                  backgroundColor: Color(0xff2A2D30),
                  foregroundColor: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Or continue with",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                onPressed: () => {debugPrint("Using the Google")},
                iconSize: 40,
                splashRadius: 100,
                icon: Ink.image(
                    image: NetworkImage(
                        "https://logopng.com.br/logos/google-37.png")),
              ),
              IconButton(
                  onPressed: () {},
                  iconSize: 40,
                  splashRadius: 100,
                  icon: Ink.image(
                      image: NetworkImage(
                          "https://logodownload.org/wp-content/uploads/2014/09/twitter-logo-2-1.png"))),
              IconButton(
                  onPressed: () {},
                  iconSize: 40,
                  splashRadius: 100,
                  icon: Ink.image(
                      image: NetworkImage(
                          "https://logopng.com.br/logos/facebook-13.png")))
            ]),
          ],
        ),
      ),
    );
  }
}
