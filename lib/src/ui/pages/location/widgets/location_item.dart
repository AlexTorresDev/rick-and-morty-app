import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    required this.location,
  });

  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/details/${location.id}'),
      child: ListTile(
        leading: const Icon(Icons.location_on),
        title: Text(
          location.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          location.type,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
