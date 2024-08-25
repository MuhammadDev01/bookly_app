import 'package:flutter/material.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 155 / 224,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/images/cover3.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
