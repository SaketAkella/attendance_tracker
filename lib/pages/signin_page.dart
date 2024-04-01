import 'package:flutter/material.dart';
import 'package:attendance_tracker/widgets/login_image.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //return LoginImage();
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 125.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/3886130.jpg',
                width: 250,
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
