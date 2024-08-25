import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.style,
    required this.backgroundColor,
    this.borderRadius,
  });
  final String text;
  final TextStyle style;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
