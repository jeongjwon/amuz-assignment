import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/my_image.jpeg'),
                radius: 100,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Jeong Ji Won",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Software Engineer",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.orange[700],
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'FrontEnd Junior ( React / Vue / Flutter )',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white24),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  label: const Text(
                    "Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white24),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  label: const Text(
                    "GitHub",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.blogger,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white24),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  label: const Text(
                    "Blog",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            // const SizedBox(width: 20.0),
            // const SizedBox(height: 30.0),
            // const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
