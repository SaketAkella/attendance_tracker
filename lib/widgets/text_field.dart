import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final IconData iconData; // Add iconData property

  const CustomTextField({
    Key? key,
    required this.width,
    required this.height,
    this.borderRadius = 0.0,
    required this.text,
    required this.iconData, // Define iconData parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.deepPurpleAccent,
            ),
            const SizedBox(width: 8), // Add spacing between icon and text
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'san-serif',
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
