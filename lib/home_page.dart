import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_cost_estimator/new_trip_page.dart';
import 'package:travel_cost_estimator/dark_text_field.dart';
import 'package:travel_cost_estimator/trip_list_element.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const NewTripPage();
          }));
        },
        backgroundColor: const Color.fromARGB(255, 242, 231, 213),
        child: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 36, 39, 44),
          size: 35,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 15),
            child: const Text(
              'Trip plans',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const DarkTextField(
            hint: 'Search...',
          ),
          Expanded(
            child: ListView(
              children: getTrips(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getTrips() {
    if (Random().nextInt(2) % 2 == 0 || true) {
      return [
        TripListElement(
          destination: 'Canada',
          cost: '3200 CAD',
          image: 'assets/images/image.jpg',
          date: '27/12 - 04/01/2023',
        ),
        TripListElement(
          destination: 'Alaska',
          cost: '4200 USD',
          image: 'assets/images/image.jpg',
          date: '27/12 - 04/01/2023',
        ),
      ];
    } else {
      return const [
        Center(
          child: Text(
            "There is nothing here :(\nAdd a new trip and start\nplanning your travel budget.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 17, color: Color.fromARGB(200, 255, 255, 255)),
          ),
        )
      ];
    }
  }
}
