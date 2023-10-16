import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_provider.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key});

  final _textfieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 50,
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.grey,
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25),
            width: 70,
            height: 20,
            child: Center(
              child: TextField(
                controller: _textfieldController,
                decoration: InputDecoration.collapsed(
                  hintText: AppLocalizations.of(context)!.searchbar_placeholder,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Consumer(
                builder: (context, ref, child) {
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
                builder: (context, ref, child) {
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
    );
  }
}
