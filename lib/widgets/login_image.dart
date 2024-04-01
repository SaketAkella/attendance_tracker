import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/login_image.png',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ],
    );
  }
}
