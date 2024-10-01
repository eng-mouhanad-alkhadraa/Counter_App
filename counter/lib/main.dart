import 'package:flutter/material.dart';

void main() {
  runApp(counter());
}

class counter extends StatefulWidget {
  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.amber,
            backgroundColor: Colors.black,
            title: const Center(
              child: Text(
                'Basketball Points Counter ',
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/basketball.webp'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'team A',
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          Text(
                            '$teamAPoints',
                            style: const TextStyle(
                                fontSize: 150, color: Colors.black),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                              print(teamAPoints);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: const Text(
                              "add 1 point",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 24),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                              print(teamAPoints);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: const Text(
                              "add 2 point",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 24),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                              print(teamAPoints);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: const Text(
                              "add 3 point",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: const VerticalDivider(
                        indent: 30,
                        endIndent: 15,
                        color: Colors.black,
                        thickness: 5,
                      ),
                    ),
                    Container(
                      height: 500, //Column تحديد ارتفاع ال
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'team B',
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          Text(
                            '$teamBPoints',
                            style: const TextStyle(
                                fontSize: 150, color: Colors.black),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                              print(teamBPoints);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: const Text(
                              "add 1 point",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 24),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2;
                              });
                              print(teamBPoints);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: const Text(
                              "add 2 point",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 24),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3;
                              });
                              print(teamBPoints);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: const Text(
                              "add 3 point",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Reset",
                    style: TextStyle(color: Colors.amber, fontSize: 24),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

