import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/animations/Animation - 1726651036335.json",
              height: 100,
            ),
            const Text(
              'Payment Completed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
