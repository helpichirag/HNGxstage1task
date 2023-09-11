import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

import 'package:hngxstag1/github_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: Stack(
        children: [
          Image.asset(
            "assets/background.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          radius: 125,
                          backgroundColor:
                              const Color.fromARGB(255, 227, 217, 217),
                          child: CircleAvatar(
                            radius: 115,
                            backgroundColor: Colors.grey.shade300,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(110),
                              child: Image.asset(
                                'assets/profile.jpg',
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Expanded(
                child: Expanded(
                  child: Text(
                    "@ichiragkumar",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                    title: const Text(
                      "Chirag Kumar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Flutter Devloper",
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                    ),
                    trailing: Transform.rotate(
                      angle: -math.pi / 2,
                      child: const Text(
                        "Hire Me",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GitHubWebViewScreen();
                  }));
                },
                splashColor: Colors.white,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 14, 14, 14),
                        borderRadius: BorderRadius.circular(18.0)),
                    child: Center(
                      child: ListTile(
                          title: const Center(
                            child: Text(
                              "Github",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.g,
                              color: Colors.white,
                            ),
                          )),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      )),
    );
  }
}
