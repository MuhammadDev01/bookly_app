import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_results_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchTextField(),
                SizedBox(
                  height: 15,
                ),
                Text('Search Result', style: Styles.textStyle20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Expanded(child: SearchResultsListView()),
        ),
      ],
    );
  }
}
