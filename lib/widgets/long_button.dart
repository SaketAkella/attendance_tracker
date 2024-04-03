import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed; // Add onPressed callback

  const LongButton({
    Key? key,
    required this.width,
    required this.height,
    this.borderRadius = 0.0,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed, // Update constructor with onPressed parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: null, // Use onPressed callback
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'san-serif',
            color: textColor, // Use textColor for text color
          ),
        ),
      ),
    );
  }
}
