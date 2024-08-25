import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsAction extends StatelessWidget {
  const BookDetailsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16)),
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16)),
              backgroundColor: Color(0xffEF8262),
            ),
          ),
        ],
      ),
    );
  }
}
