import 'package:e_course/view/dashboard_view.dart';
import 'package:e_course/view/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/my_button.dart';
import '../widgets/my_textform_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    // Add more sophisticated email validation if needed
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // Add more password validation logic if needed
    return null;
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic
      Get.off(const DashboardView(), transition: Transition.fadeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset('assets/images/ecourses.png', height: 150),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade900,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: GoogleFonts.dmSerifDisplay(
                            textStyle: const TextStyle(fontSize: 22, color: Colors.green),
                          ),
                        ),
                        const Text(
                          'Enter your Email & Password to sign in',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const SizedBox(height: 15),
                        CustomTextField(
                          hintText: 'Email Address',
                          prefixIcon: Icons.email,
                          prefixIconColor: Colors.blue,
                          fillColor: Colors.grey.shade900,
                          controller: _emailController,
                          validator: _validateEmail,
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          hintText: 'Password',
                          prefixIcon: Icons.lock,
                          prefixIconColor: Colors.blue,
                          fillColor: Colors.grey.shade900,
                          suffixIcon: Icons.remove_red_eye,
                          suffixIconColor: Colors.red,
                          controller: _passwordController,
                          obscureText: true,
                          validator: _validatePassword,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: 'Login',
              onPressed: _login,
              color: Colors.grey.shade900,
              textColor: Colors.green,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account?",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Get.to(const SignUpView(), transition: Transition.fadeIn);
                  },
                  child: const Text(
                    "Sign Up?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
