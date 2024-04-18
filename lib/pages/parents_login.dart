import 'package:flutter/material.dart';
import 'package:attendance_tracker/widgets/text_field.dart';
import 'package:flutter/widgets.dart';

class ParentsLogin extends StatelessWidget {
  const ParentsLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController(); // Define and initialize the TextEditingController

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
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(2, 2),
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
                        color: Colors.grey,
                        blurRadius: 1,
                        offset: Offset(2, 2),
                      )
                    ]
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top:300.0,
                  left:25.0,
                ),
                child: CustomTextField(
                  width: 320,
                  height: 50,
                  text: 'Password',
                  borderRadius: 30,
                  iconData: const IconData(0xf0050, fontFamily: 'MaterialIcons'),
                  obscureText: false,
                  onChanged: (value){
                  },
                  controller: textEditingController, // Pass the TextEditingController to the controller parameter
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
