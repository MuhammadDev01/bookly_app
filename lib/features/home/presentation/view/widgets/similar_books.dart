import 'package:bookly_app/features/home/presentation/view/widgets/book_image_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 15),
          child: BookImageItem(),
        ),
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
