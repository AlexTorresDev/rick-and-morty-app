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
mixin _$SearchState {
  ApiResultModel<CharacterModel> get apiCharacter =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({ApiResultModel<CharacterModel> apiCharacter, bool isLoading});

  $ApiResultModelCopyWith<CharacterModel, $Res> get apiCharacter;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCharacter = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      apiCharacter: null == apiCharacter
          ? _value.apiCharacter
          : apiCharacter // ignore: cast_nullable_to_non_nullable
              as ApiResultModel<CharacterModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultModelCopyWith<CharacterModel, $Res> get apiCharacter {
    return $ApiResultModelCopyWith<CharacterModel, $Res>(_value.apiCharacter,
        (value) {
      return _then(_value.copyWith(apiCharacter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResultModel<CharacterModel> apiCharacter, bool isLoading});

  @override
  $ApiResultModelCopyWith<CharacterModel, $Res> get apiCharacter;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCharacter = null,
    Object? isLoading = null,
  }) {
    return _then(_$SearchStateImpl(
      apiCharacter: null == apiCharacter
          ? _value.apiCharacter
          : apiCharacter // ignore: cast_nullable_to_non_nullable
              as ApiResultModel<CharacterModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl extends _SearchState {
  _$SearchStateImpl({required this.apiCharacter, required this.isLoading})
      : super._();

  @override
  final ApiResultModel<CharacterModel> apiCharacter;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SearchState(apiCharacter: $apiCharacter, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.apiCharacter, apiCharacter) ||
                other.apiCharacter == apiCharacter) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiCharacter, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  factory _SearchState(
      {required final ApiResultModel<CharacterModel> apiCharacter,
      required final bool isLoading}) = _$SearchStateImpl;
  _SearchState._() : super._();

  @override
  ApiResultModel<CharacterModel> get apiCharacter;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
