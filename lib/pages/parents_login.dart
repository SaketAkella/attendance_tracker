import 'package:flutter/material.dart';

class ParentsLogin extends StatelessWidget {
  const ParentsLogin({Key? key}) : super(key: key);

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
                  'assets/images/parents.jpg',
                  height: 250,
                  width: 250,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 60.0,
                  left: 20.0,
                ),
                child: Text(
                  'Parent\'s Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepPurpleAccent,
                    fontFamily: 'sans-serif',
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(2, 3),
                      )
                    ]
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 150.0,
                  left: 20.0,
                ),
                child: Text(
                  'Enter password.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepPurple,
                    fontFamily: 'sans-serif',
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(2, 3),
                      )
                    ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
