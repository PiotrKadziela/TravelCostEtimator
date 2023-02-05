import 'package:flutter/material.dart';
import 'package:travel_cost_estimator/dark_text_field.dart';

class NewTripPage extends StatelessWidget {
  const NewTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color.fromARGB(255, 36, 39, 44),
                ),
              ),
            ),
            const Text(
              'Plan a new trip',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: 'Inter',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 10),
                  width: double.infinity,
                  child: const Text(
                    'Where do you want to go?',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                const DarkTextField(hint: 'Enter destination'),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 10),
                  width: double.infinity,
                  child: const Text(
                    'When do you want to go? (optional)',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Expanded(child: DarkTextField(hint: 'Start date')),
                    Container(
                      width: 20,
                    ),
                    const Expanded(child: DarkTextField(hint: 'End date')),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(top: 30, right: 10),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color.fromARGB(255, 242, 231, 213),
                    child: const Icon(
                      Icons.check_sharp,
                      color: Color.fromARGB(255, 36, 39, 44),
                      size: 35,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
