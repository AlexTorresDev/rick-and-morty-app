import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    final height = (MediaQuery.of(context).size.height / 2) - 120.0;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: DropShadow(
            blurRadius: 10,
            offset: const Offset(3, 3),
            spread: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(
                character.image,
                fit: BoxFit.cover,
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
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Icon(character.status == 'Alive'
                        ? Icons.favorite
                        : character.status == 'Dead'
                            ? Icons.favorite_border
                            : Icons.favorite_border_outlined),
                    title: Text(
                      AppLocalizations.of(context)!.card_status,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.status,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_species,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.species,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_type,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.type,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_origin,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.origin.name,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      AppLocalizations.of(context)!.card_location,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      character.location.name,
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
