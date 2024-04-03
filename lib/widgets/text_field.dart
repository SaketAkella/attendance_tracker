import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final IconData iconData;
  final ValueChanged<String> onChanged; // Add onChanged parameter
  final TextEditingController controller; // Add controller parameter
  final bool obscureText; // Add obscureText parameter

  const CustomTextField({
    Key? key,
    required this.width,
    required this.height,
    this.borderRadius = 0.0,
    required this.text,
    required this.iconData,
    required this.onChanged, // Update constructor with parameters
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ]
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
            Expanded(
              child: TextField(
                onChanged: onChanged,
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'san-serif',
                    color: Colors.deepPurple,
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
