import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 36, bottom: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchView);
            },
            icon: const Icon(
              Icons.search,
              size: 36,
            ),
          ),
        ],
      ),
    );
  }
}
