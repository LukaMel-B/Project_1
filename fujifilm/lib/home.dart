import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fujifilm/cam-card.dart';
import 'package:fujifilm/list-data.dart';

import 'main.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  lists data = new lists();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: SizedBox(
              height: 35,
              width: 35,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3))),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                        (route) => false);
                  },
                  child: const Icon(
                    Icons.power_settings_new_rounded,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: TextButton(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(Colors.white.withOpacity(0.3))),
              onPressed: () {
                exit(0);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: SizedBox(
          width: 115,
          child: Image.asset('assets/icons/logo.png'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return CamCard(
                Boxcolor: data.color[index],
                img: 'assets/images/img-${index + 1}.png',
                name: data.name[index],
                price: data.price[index],
              );
            }),
      ),
    );
  }
}
