import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BookListViewItem(),
        itemCount: 10,
      ),
    );
  }
}
