import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              'Trip plans',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: 'Inter',
                fontSize: 32,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: const Color.fromARGB(255, 36, 39, 44),
                ),
                color: const Color.fromARGB(75, 57, 62, 70)),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(
                    fontFamily: 'Inter',
                    color: Color.fromARGB(255, 36, 39, 44)),
                border: InputBorder.none,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 36, 39, 44),
                    ),
                    color: const Color.fromARGB(75, 57, 62, 70),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Canada',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        alignment: Alignment.bottomRight,
                        child: const Text(
                          '3200 CAD',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: double.infinity,
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))
                          ),
                          child: Image.asset(
                            'assets/images/image.jpg',
                            fit: BoxFit.fill,
                            width: 90,
                            height: 90,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
