import 'package:bookly_app/features/home/presentation/view/widgets/book_image_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
