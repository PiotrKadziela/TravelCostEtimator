import 'package:flutter/material.dart';

class TripListElement extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TripListElement({
    required this.destination,
    required this.cost,
    required this.image,
    this.date = '',
  });

  final String destination;
  final String cost;
  final String image;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color.fromARGB(255, 36, 39, 44),
        ),
        color: const Color.fromARGB(255, 57, 62, 70),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              alignment: Alignment.topLeft,
              child: Text(
                destination,
                style: const TextStyle(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cost,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Color.fromARGB(127, 255, 255, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w100
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              height: double.infinity,
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                  width: 80,
                  height: 80,
                ),
              )),
        ],
      ),
    );
  }
}
