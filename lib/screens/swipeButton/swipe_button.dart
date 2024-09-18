import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/swipeButton/completedscreen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:page_transition/page_transition.dart';

class SwipeButtonAnimation extends StatefulWidget {
  const SwipeButtonAnimation({super.key});

  @override
  State<SwipeButtonAnimation> createState() => _SwipeButtonAnimationState();
}

class _SwipeButtonAnimationState extends State<SwipeButtonAnimation> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Center(
          child: SwipeableButtonView(
            onFinish: () {
              Navigator.push(
                context,
                PageTransition(
                  child: const CompletedScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            },
            onWaitingProcess: () {
              Future.delayed(const Duration(seconds: 2), () async {
                setState(() {
                  isFinished = true;
                });
              });
            },
            isFinished: isFinished,
            activeColor: Colors.green,
            buttonWidget: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            buttonText: "  Slider to Pay",
            buttontextstyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
