// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState<T> {
  ApiResultModel<T> get apiResult => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<T, SearchState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
  @useResult
  $Res call({ApiResultModel<T> apiResult, bool isLoading});

  $ApiResultModelCopyWith<T, $Res> get apiResult;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      apiResult: null == apiResult
          ? _value.apiResult
          : apiResult // ignore: cast_nullable_to_non_nullable
              as ApiResultModel<T>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultModelCopyWith<T, $Res> get apiResult {
    return $ApiResultModelCopyWith<T, $Res>(_value.apiResult, (value) {
      return _then(_value.copyWith(apiResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<T, $Res>
    implements $SearchStateCopyWith<T, $Res> {
  factory _$$SearchStateImplCopyWith(_$SearchStateImpl<T> value,
          $Res Function(_$SearchStateImpl<T>) then) =
      __$$SearchStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ApiResultModel<T> apiResult, bool isLoading});

  @override
  $ApiResultModelCopyWith<T, $Res> get apiResult;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchStateImpl<T>>
    implements _$$SearchStateImplCopyWith<T, $Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl<T> _value, $Res Function(_$SearchStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiResult = null,
    Object? isLoading = null,
  }) {
    return _then(_$SearchStateImpl<T>(
      apiResult: null == apiResult
          ? _value.apiResult
          : apiResult // ignore: cast_nullable_to_non_nullable
              as ApiResultModel<T>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl<T> extends _SearchState<T> {
  _$SearchStateImpl({required this.apiResult, required this.isLoading})
      : super._();

  @override
  final ApiResultModel<T> apiResult;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SearchState<$T>(apiResult: $apiResult, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl<T> &&
            (identical(other.apiResult, apiResult) ||
                other.apiResult == apiResult) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiResult, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<T, _$SearchStateImpl<T>> get copyWith =>
      __$$SearchStateImplCopyWithImpl<T, _$SearchStateImpl<T>>(
          this, _$identity);
}

abstract class _SearchState<T> extends SearchState<T> {
  factory _SearchState(
      {required final ApiResultModel<T> apiResult,
      required final bool isLoading}) = _$SearchStateImpl<T>;
  _SearchState._() : super._();

  @override
  ApiResultModel<T> get apiResult;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<T, _$SearchStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
