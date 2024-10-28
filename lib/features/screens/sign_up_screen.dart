import 'package:app_flutter/features/widgets/customs/CustomClipper.dart';
import 'package:app_flutter/features/widgets/customs/Custom_textfield.dart';
import 'package:app_flutter/features/widgets/customs/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                      "Sign UP ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const Text("Registered with your email addrees"),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormFieldEmail(),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormFieldPassword(),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: TextFormField(
                        // controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 160,
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
