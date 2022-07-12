import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fujifilm/home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    void logIn() {
      if (email == 'luluhsany@gmail.com' && password == 'LuhaSaniyyaKP') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        const snackBar = SnackBar(
          duration: Duration(seconds: 2),
          content: Text(
            'Error! Invalid Username or Password',
            style: TextStyle(
                color: Colors.white,
                // color: Color(0xff388A75),y
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 310,
              width: 310,
              child: Image.asset('assets/images/login.png'),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              child: Image.asset('assets/icons/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 38, bottom: 15, left: 30, right: 30),
              child: TextField(
                cursorColor: const Color(0xff46665E),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                  hintText: "Username",
                  fillColor: Color.fromARGB(255, 249, 249, 249),
                ),
                onChanged: (val) {
                  email = val;
                },
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 30, left: 30, right: 30),
              child: TextField(
                cursorColor: const Color(0xff46665E),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                  hintText: "Password",
                  fillColor: Color.fromARGB(255, 249, 249, 249),
                ),
                onChanged: (val) {
                  password = val;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(Colors.black.withOpacity(0.1))),
              onPressed: () {
                logIn();
              },
              child: Container(
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
