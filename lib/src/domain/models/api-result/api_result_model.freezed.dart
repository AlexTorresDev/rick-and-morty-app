// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResultModel<T> _$ApiResultModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResultModel<T> {
  InfoModel get info => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResultModelCopyWith<T, ApiResultModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultModelCopyWith<T, $Res> {
  factory $ApiResultModelCopyWith(
          ApiResultModel<T> value, $Res Function(ApiResultModel<T>) then) =
      _$ApiResultModelCopyWithImpl<T, $Res, ApiResultModel<T>>;
  @useResult
  $Res call({InfoModel info, List<T> results});

  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class _$ApiResultModelCopyWithImpl<T, $Res, $Val extends ApiResultModel<T>>
    implements $ApiResultModelCopyWith<T, $Res> {
  _$ApiResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res> get info {
    return $InfoModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResultImplCopyWith<T, $Res>
    implements $ApiResultModelCopyWith<T, $Res> {
  factory _$$ApiResultImplCopyWith(
          _$ApiResultImpl<T> value, $Res Function(_$ApiResultImpl<T>) then) =
      __$$ApiResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({InfoModel info, List<T> results});

  @override
  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class __$$ApiResultImplCopyWithImpl<T, $Res>
    extends _$ApiResultModelCopyWithImpl<T, $Res, _$ApiResultImpl<T>>
    implements _$$ApiResultImplCopyWith<T, $Res> {
  __$$ApiResultImplCopyWithImpl(
      _$ApiResultImpl<T> _value, $Res Function(_$ApiResultImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$ApiResultImpl<T>(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResultImpl<T> extends _ApiResult<T> {
  _$ApiResultImpl({required this.info, required final List<T> results})
      : _results = results,
        super._();

  factory _$ApiResultImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResultImplFromJson(json, fromJsonT);

  @override
  final InfoModel info;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ApiResultModel<$T>(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultImpl<T> &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultImplCopyWith<T, _$ApiResultImpl<T>> get copyWith =>
      __$$ApiResultImplCopyWithImpl<T, _$ApiResultImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResultImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResult<T> extends ApiResultModel<T> {
  factory _ApiResult(
      {required final InfoModel info,
      required final List<T> results}) = _$ApiResultImpl<T>;
  _ApiResult._() : super._();

  factory _ApiResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResultImpl<T>.fromJson;

  @override
  InfoModel get info;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$ApiResultImplCopyWith<T, _$ApiResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
