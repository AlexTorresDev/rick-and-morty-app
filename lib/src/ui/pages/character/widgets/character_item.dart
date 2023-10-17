import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';
import 'package:rick_and_morty_app/src/ui/commons/colors.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({
    super.key,
    required this.character,
  });

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    Color? color = character.status == 'Alive'
        ? kGreen
        : character.status == 'Dead'
            ? kRed
            : Colors.grey;

    return GestureDetector(
      onTap: () => context.push('/character/${character.id}'),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(
            color: color.withAlpha(80),
            width: 2.0,
          ),
        ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        character.status == 'Alive'
                            ? AppLocalizations.of(context)!.card_statusAlive
                            : character.status == 'Dead'
                                ? AppLocalizations.of(context)!.card_statusDead
                                : AppLocalizations.of(context)!
                                    .card_statusUnknown,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
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
