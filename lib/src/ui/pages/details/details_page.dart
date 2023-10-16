import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/ui/pages/details/widgets/character_details.dart';
import 'package:rick_and_morty_app/src/ui/providers/character_details/character_details_provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catProvider = ref.watch(characterDetailsProvider(int.parse(id)));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: catProvider.when(
          skipError: true,
          data: (cat) => Text(cat.name),
          loading: () => const SizedBox(),
          error: (_, __) => const SizedBox(),
        ),
      ),
      body: catProvider.when(
        data: (cat) => CatDetails(character: cat),
        error: (_, stacktrace) => Center(
          child: Text(stacktrace.toString()),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
