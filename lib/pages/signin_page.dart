import 'package:flutter/material.dart';
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
            ),
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
                    color: Color(0xFF37474F),
                    fontFamily: 'sans-serif'
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 150
                  ),
                child: Text(
                  'Please Sign In to continue.',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF37474F),
                      fontFamily: 'sans-serif'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
