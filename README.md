# Rick And Morty APP (Prueba técnica Double V Partners)

Aplicativo móvil desarrollado en Flutter para la prueba técnica de Double V Partners.


## Librerías utilizadas

- [x] [Flutter Riverpod](https://pub.dev/packages/flutter_riverpod)
- [x] [Dartz](https://pub.dev/packages/dartz)
- [x] [Freezed](https://pub.dev/packages/freezed)
- [x] [Http](https://pub.dev/packages/http)
- [x] [GoRouter](https://pub.dev/packages/go_router)

## Arquitectura

Se utilizó una arquitectura basada en Clean Architecture, con una capa de presentación, una capa de dominio y una capa de infraestructura.

### Presentación

En esta capa se encuentran los widgets y las páginas, los cuales se encargan de mostrar la información al usuario y de recibir las interacciones del mismo.

### Dominio

En esta capa se encuentran los modelos de datos, los cuales son utilizados por la capa de presentación y por la capa de infraestructura. También se encuentran los casos de uso, los cuales son utilizados por la capa de presentación y por la capa de infraestructura.

### Infraestructura

En esta capa se encuentran los servicios o consumos a apis, los cuales son utilizados por los casos de uso.

## Estructura de carpetas

```bash
lib
├── src
│   ├── app
│   │   ├── app.dart
│   ├── config
│   │   ├── providers
│   │   │   ├── character_provider.dart
│   │   │   ├── client_provider.dart
│   │   │   ├── episode_provider.dart
│   │   │   ├── location_provider.dart
│   │   ├── router
│   │   │   ├── router.dart
│   ├── core
│   │   ├── errors
│   │   │   ├── exceptions
│   │   │   │   ├── exceptions.dart
│   │   │   │   ├── failure.dart
│   │   ├── network
│   │   │   ├── client_service.dart
│   ├── domain
│   │   ├── models
│   │   │   ├── character
│   │   │   │   ├── character_model.dart
│   │   │   │   ├── gateway
│   │   │   │   │   ├── character_gateway.dart
│   │   │   ├── episode
│   │   │   │   ├── episode_model.dart
│   │   │   │   ├── gateway
│   │   │   │   │   ├── episode_gateway.dart
│   │   │   ├── location
│   │   │   │   ├── gateway
│   │   │   │   │   ├── location_gateway.dart
│   │   │   │   ├── location_model.dart
│   │   │   ├── info
│   │   │   │   ├── info_model.dart
│   │   │   ├── api-result
│   │   │   │   ├── api_result_model.dart
│   │   ├── use_cases
│   │   │   ├── character
│   │   │   │   ├── character_use_case.dart
│   │   │   ├── episode
│   │   │   │   ├── episode_use_case.dart
│   │   │   ├── location
│   │   │   │   ├── location_use_case.dart
│   ├── infrastructure
│   │   ├── driven_adapter
│   │   │   ├── api
│   │   │   │   ├── character_api
│   │   │   │   │   ├── character_api.dart
│   │   │   │   ├── episode_api
│   │   │   │   │   ├── episode_api.dart
│   │   │   │   ├── location_api
│   │   │   │   │   ├── location_api.dart
│   ├── ui
│   │   ├── commons
│   │   │   ├── colors.dart
│   │   ├── pages
│   │   │   ├── character
│   │   │   │   ├── widgets
│   │   │   │   │   ├── character_details.dart
│   │   │   │   │   ├── character_item.dart
│   │   │   │   │   ├── character_list.dart
│   │   │   │   ├── character_page.dart
│   │   │   ├── episode
│   │   │   │   ├── widgets
│   │   │   │   │   ├── episode_details.dart
│   │   │   │   │   ├── episode_item.dart
│   │   │   │   │   ├── episode_list.dart
│   │   │   │   ├── episode_page.dart
│   │   │   ├── home
│   │   │   │   ├── widgets
│   │   │   │   │   ├── home_item.dart
│   │   │   │   ├── home_page.dart
│   │   │   ├── location
│   │   │   │   ├── widgets
│   │   │   │   │   ├── location_details.dart
│   │   │   │   │   ├── location_item.dart
│   │   │   │   │   ├── location_list.dart
│   │   │   │   ├── location_page.dart
│   │   │   ├── error_page.dart
│   │   ├── providers
│   │   │   ├── character
│   │   │   │   ├── character_details_provider.dart
│   │   │   │   ├── character_provider.dart
│   │   │   ├── episode
│   │   │   │   ├── episode_details_provider.dart
│   │   │   │   ├── episode_provider.dart
│   │   │   ├── location
│   │   │   │   ├── location_details_provider.dart
│   │   │   │   ├── location_provider.dart
│   │   │   ├── search
│   │   │   │   ├── search_characters_provider.dart
│   │   │   │   ├── search_episodes_provider.dart
│   │   │   │   ├── search_event.dart
│   │   │   │   ├── search_locations_provider.dart
│   │   │   │   ├── search_state.dart
│   │   ├── widgets
│   │   │   ├── background_wave.dart
│   │   │   ├── custom_search_bar.dart
│   │   │   ├── sliver_search_app_bar.dart
│   │   ├── main.dart
```

## Manejo de estado

Para el manejo de estado se utilizó Riverpod, el cual es un paquete que permite manejar el estado de una manera sencilla y sin necesidad de utilizar clases.

## Mapeo de objetos

Para el mapeo de objetos se utilizó la librería Freezed, la cual permite generar clases inmutables y clases de uniones de manera sencilla.

## Enrutamiento

Para el enrutamiento se utilizó GoRouter, el cual permite manejar el enrutamiento en forma de url.
