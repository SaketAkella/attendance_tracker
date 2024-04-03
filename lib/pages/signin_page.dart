import 'package:flutter/material.dart';
import 'package:attendance_tracker/widgets/text_field.dart';
import 'package:attendance_tracker/widgets/long_button.dart';
import 'package:attendance_tracker/widgets/login_image.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 125.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/1.jpg',
                  width: 250,
                  height: 250,
                ),
              ),
            ), //image
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 50.0,
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
                  top: 140,
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
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 250,
                  left: 30,
                ),
                child: CustomTextField(
                  width: 320,
                  height: 50,
                  borderRadius: 30,
                  text: 'Username',
                  iconData: IconData(0xee35, fontFamily: 'MaterialIcons'),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 380,
                  left: 30,
                ),
                child: CustomTextField(
                  width: 320,
                  height: 50,
                  borderRadius: 30,
                  text: 'Password',
                  iconData: IconData(0xf0050, fontFamily: 'MaterialIcons'),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 460.0,
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Remember me next time',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.check_box_outline_blank,
                      size: 20,
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 540.0,
                  left: 30.0,
                ),
                child: LongButton(
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
                  top: 625.0,
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
