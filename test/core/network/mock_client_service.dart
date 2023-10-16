import 'package:http/http.dart' show Response;
import 'package:mockito/mockito.dart';

import 'package:rick_and_morty_app/src/core/network/client_service.dart';

class MockClientService extends Mock implements ClientService {
  @override
  Future<Response> get(String? url) => super.noSuchMethod(
        Invocation.method(#get, [url]),
        returnValue: Future.value(Response('', 200)),
        returnValueForMissingStub: Future.value(Response('', 404)),
      ) as Future<Response>;
}
