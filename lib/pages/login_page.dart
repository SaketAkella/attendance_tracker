import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:attendance_tracker/widgets/text_field.dart';
import 'package:attendance_tracker/widgets/long_button.dart';
import 'package:attendance_tracker/services/firebase_auth.dart'; // Import FirebaseAuthService

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: AspectRatio(
                  aspectRatio: 11 / 9,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      width: 250,
                      height: 250,
                    ),
                  ),
                )), //image
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 90.0,
                  left: 20.0,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepPurpleAccent,
                    fontFamily: 'sans-serif',
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 10,
                ),
                child: Text(
                  'Please Sign In to continue.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontFamily: 'sans-serif',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 150,
                  left: 25,
                ),
                child: CustomTextField(
                  controller: emailController, // Provide emailController
                  width: 320,
                  height: 50,
                  borderRadius: 30,
                  text: 'Email',
                  iconData: const IconData(0xee35, fontFamily: 'MaterialIcons'),
                  onChanged: (value) {
                    // Update email value when user types
                    setState(() {
                      // Update the state
                    });
                    // ignore: unused_label
                  },
                  obscureText:
                      false, // Set obscureText to false for email field
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 280,
                  left: 25,
                ),
                child: CustomTextField(
                  controller: passwordController, // Provide passwordController
                  width: 320,
                  height: 50,
                  borderRadius: 30,
                  text: 'Password',
                  iconData:
                      const IconData(0xf0050, fontFamily: 'MaterialIcons'),
                  onChanged: (value) {
                    // Update password value when user types
                    setState(() {
                      // Update the state
                    });
                  },
                  obscureText:
                      true, // Set obscureText to true for password field
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 415.0,
                  left: 25.0,
                ),
                child: LongButton(
                  onPressed: () async {
                    // Call sign in method when button is pressed
                    User? user = await FirebaseAuthService()
                        .signInWithEmailAndPassword(
                            emailController.text, passwordController.text);
                    if (user != null) {
                      // Navigate to home screen or perform necessary action upon successful login
                    } else {
                      // Show error message or handle unsuccessful login
                    }
                  },
                  width: 320,
                  height: 50,
                  text: 'Sign In',
                  borderRadius: 30,
                  color: Colors.deepPurpleAccent,
                  textColor: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 500.0,
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        // Redirect to sign up page action here
                      },
                      child: const Text(
                        'Redirect to Parent Page',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                          fontFamily: 'sans-serif',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
