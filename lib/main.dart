// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Basketballpoints());
}

class Basketballpoints extends StatefulWidget {
  @override
  State<Basketballpoints> createState() => _BasketballpointsState();
}

int teamA = 0;
int teamB = 0;

class _BasketballpointsState extends State<Basketballpoints> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamA',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    Spacer(
                      flex: 12,
                    ),
                  ]),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    endIndent: 50,
                    indent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamB',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    Spacer(
                      flex: 12,
                    ),
                  ]),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 60),
                ),
                child: Text(
                  'Rest',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
