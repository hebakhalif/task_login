import 'package:app_flutter/modules/widgets/customs/CustomClipper.dart';
import 'package:app_flutter/modules/widgets/customs/Custom_textfield.dart';
import 'package:app_flutter/modules/widgets/customs/custom_button.dart';
import 'package:flutter/material.dart';

class SignInScrren extends StatelessWidget {
  const SignInScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.90,
                child: ClipPath(
                  clipper: BottomWaveClipper(),
                  child: Image.asset(
                    "assets/images/Screenshot 2024-10-27 194723.png",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sign In ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const Text("sign in your Registered Account"),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormFieldEmail(),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormFieldPassword(),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 34),
                        child: Text(
                          'Forget Password ?',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                color: const Color.fromARGB(255, 229, 142, 134),
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    const CustomButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
