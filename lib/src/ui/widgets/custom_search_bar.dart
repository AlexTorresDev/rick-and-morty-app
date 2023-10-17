import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_notifier.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';

class CustomSearchBar<T> extends StatelessWidget {
  CustomSearchBar({
    Key? key,
    required this.searchProvider,
  }) : super(key: key);

  final AutoDisposeStateNotifierProvider<SearchNotifier<T>, SearchState<T>>
      searchProvider;

  final _textfieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      height: 56.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 140,
              child: TextField(
                controller: _textfieldController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppLocalizations.of(context)!.searchbar_placeholder,
                  contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                ),
              ),
            ),
            Row(
              children: [
                Consumer(
                  builder: (context, ref, _) {
                    return IconButton(
                      onPressed: () {
                        if (_textfieldController.text.isNotEmpty) {
                          ref.invalidate(searchProvider);
                          ref.read(searchProvider.notifier).mapEventsToState(
                                SearchedTextChanged(
                                  text: _textfieldController.text,
                                ),
                              );
                        }
                      },
                      icon: const Icon(
                        Icons.search,
                      ),
                    );
                  },
                ),
                Consumer(
                  builder: (context, ref, _) {
                    return IconButton(
                      onPressed: () {
                        if (_textfieldController.text.isNotEmpty) {
                          _textfieldController.clear();
                          ref.invalidate(searchProvider);
                          ref.read(searchProvider.notifier);
                        }
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
