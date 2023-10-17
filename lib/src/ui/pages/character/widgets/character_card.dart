import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
  });

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    Color? color = character.status == 'Alive'
            ? Colors.greenAccent
            : character.status == 'Dead'
                ? Colors.redAccent
                : Colors.grey;

    return GestureDetector(
      onTap: () => context.push('/details/${character.id}'),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: color.withAlpha(120),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
              child: Image.network(
                character.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
                opacity: AlwaysStoppedAnimation(
                  character.status == 'Alive'
                      ? 1
                      : character.status == 'Dead'
                          ? 0.5
                          : 0.8,
                ),
                loadingBuilder: ((context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const SizedBox(
                            width: double.infinity,
                            height: 180,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )),
                errorBuilder: ((context, error, stackTrace) => SizedBox(
                      width: double.infinity,
                      height: 180,
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
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    character.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        
                  ),
                  const SizedBox(height: 5),
                  Text(
                    character.status == 'Alive'
                        ? AppLocalizations.of(context)!.card_statusAlive
                        : character.status == 'Dead'
                            ? AppLocalizations.of(context)!.card_statusDead
                            : AppLocalizations.of(context)!.card_statusUnknown,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
