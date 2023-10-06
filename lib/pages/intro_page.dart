import 'package:flutter/material.dart';
import 'package:shoes_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'lib/images/nikeLogo.png',
              width: 300,
            ),
            const SizedBox(
              height: 200,
            ),
            // Tittle
            const Text(
              "Nike for you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Buy best quality and premimum sneeker from here!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    "Shope Here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
