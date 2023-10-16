import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

class CatDetails extends StatelessWidget {
  const CatDetails({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    final height = (MediaQuery.of(context).size.height / 2) - 60.0;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: DropShadow(
            blurRadius: 10,
            offset: const Offset(3, 3),
            spread: 1,
            child: Image.network(
              character.image,
              fit: BoxFit.contain,
              height: height,
              loadingBuilder: ((context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : SizedBox(
                          height: height,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        )),
              errorBuilder: ((context, error, stackTrace) => SizedBox(
                    width: double.infinity,
                    height: height,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.error, size: 40),
                          const SizedBox(height: 10),
                          Text(AppLocalizations.of(context)!.card_imageError),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    character.status,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_origin,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.species,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_lifeSpan,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.type,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_weight,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.gender,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_temperament,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.origin.name,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_dogFriendly,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.created.toString(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
