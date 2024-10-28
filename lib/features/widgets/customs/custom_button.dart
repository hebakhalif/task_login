import 'package:app_flutter/features/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(150, 50),
            side: const BorderSide(
              color: Colors.orange,
            ),
          ),
          child: const Text(
            "SIGIN UP",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 229, 142, 134),
            minimumSize: const Size(150, 50),
            side: const BorderSide(
              color: Colors.orange,
            ),
          ),
          child: const Text(
            "SIGN IN",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
