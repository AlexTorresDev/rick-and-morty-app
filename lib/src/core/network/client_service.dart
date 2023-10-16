import 'dart:convert';

import 'package:http/http.dart' show Client, Response;

class ClientService {
  ClientService();

  final String _baseURL = 'https://rickandmortyapi.com/api';
  final Client client = Client();

  Future<Response> get(String? url) async {
    return await client.get(
      Uri.parse('$_baseURL${url ?? ''}'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  Future<Response> post(
    String? url, {
    Map? headers,
    required Object body,
  }) async {
    final h = {...headers ?? {}};

    return await client.post(
      Uri.parse('$_baseURL${url ?? ''}'),
      headers: {
        ...h,
        'Content-Type': 'application/json',
      },
      body: utf8.encode(json.encode(body)),
    );
  }
}
