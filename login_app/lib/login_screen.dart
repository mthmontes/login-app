// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:my_app/second_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

bool passwordVisibily = true;

checkLogin() {
  var myEmail = emailController.text;
  var myPassowrd = passController.text;

  myEmail == "mthmontess@gmail.com" && myPassowrd == "1234567" ? "" : false;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 194, 194),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, Again! 🚀",
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
                  controller: emailController,
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
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                  controller: passController,
                  obscureText: passwordVisibily,
                  enableSuggestions: false,
                  autocorrect: false,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisibily
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: Color(0xffBCB5BF),
                      onPressed: () => {
                        setState(() => passwordVisibily = !passwordVisibily),
                      },
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SecondScreen())));
              },
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
            Text("Or continue with",
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 14.0,
                )),
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
