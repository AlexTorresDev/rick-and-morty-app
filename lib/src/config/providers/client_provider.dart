import 'package:rick_and_morty_app/src/core/network/client_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider = Provider<ClientService>((ref) {
  return ClientService();
});
