import 'package:bookly_app/features/home/presentation/view/widgets/similar_books.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like'),
        SizedBox(
          height: 15,
        ),
        SimilarBooksListView(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
