import 'package:app_flutter/features/screens/sign_in_scrren.dart';
import 'package:app_flutter/features/widgets/customs/CustomClipper.dart';
import 'package:flutter/material.dart';

class WelcomeScrren extends StatelessWidget {
  const WelcomeScrren({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Opacity(
          opacity: 0.9,
          child: ClipPath(
            clipper: BottomWaveClipper(),
            child: Image.asset(
              "assets/images/photo_2024-10-27_13-27-09.jpg",
            ),
          ),
        ),
        Container(
          child: Stack(children: [
            Opacity(
              opacity: 0.4,
              child: ClipPath(
                child: Image.asset(
                  "assets/images/Screenshot 2024-10-27 135325.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  const Text("sign in your Registered Account"),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScrren()));
                      },
                      icon: const Icon(
                        Icons.arrow_circle_right_outlined,
                      )),
                ],
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
