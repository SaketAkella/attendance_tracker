import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final Color color;
  final Color textColor;

  const LongButton({
    Key? key,
    required this.width,
    required this.height,
    this.borderRadius = 0.0,
    required this.text,
    required this.color,
    required this.textColor,
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
        onPressed: null, // Removed onPressed handler
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: 'san-serif',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
