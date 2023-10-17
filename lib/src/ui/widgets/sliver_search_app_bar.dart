import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_notifier.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';
import 'package:rick_and_morty_app/src/ui/widgets/background_wave.dart';
import 'package:rick_and_morty_app/src/ui/widgets/custom_search_bar.dart';

class SliverSearchAppBar<T> extends SliverPersistentHeaderDelegate {
  const SliverSearchAppBar({
    required this.text,
    this.searchProvider,
    this.showSearchBar = false,
    this.back = true,
  });

  final String text;
  final AutoDisposeStateNotifierProvider<SearchNotifier<T>, SearchState<T>>?
      searchProvider;
  final bool showSearchBar;
  final bool back;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    double topPadding = MediaQuery.of(context).padding.top + 16;

    return Stack(
      children: [
        BackgroundWave(
          showSearchBar: showSearchBar,
        ),
        Positioned(
          top: topPadding,
          right: 16,
          left: 16,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  back
                      ? const BackButton(color: Colors.white)
                      : const SizedBox(),
                  const SizedBox(width: 8.0),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Image.asset('assets/images/logo.png'),
            ],
          ),
        ),
        showSearchBar && searchProvider != null
            ? Positioned(
                top: topPadding + offset,
                left: 16,
                right: 16,
                child: CustomSearchBar(searchProvider: searchProvider!),
              )
            : const SizedBox(),
      ],
    );
  }

  @override
  double get maxExtent => showSearchBar ? 240 : 160;

  @override
  double get minExtent => showSearchBar ? 120 : 110;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
