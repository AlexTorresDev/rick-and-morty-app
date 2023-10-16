// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<CharacterModel> characterModelList)
        updateListItems,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedTextChanged value) searchedTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged value)? searchedTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged value)? searchedTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchedTextChangedImplCopyWith<$Res> {
  factory _$$SearchedTextChangedImplCopyWith(_$SearchedTextChangedImpl value,
          $Res Function(_$SearchedTextChangedImpl) then) =
      __$$SearchedTextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchedTextChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchedTextChangedImpl>
    implements _$$SearchedTextChangedImplCopyWith<$Res> {
  __$$SearchedTextChangedImplCopyWithImpl(_$SearchedTextChangedImpl _value,
      $Res Function(_$SearchedTextChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchedTextChangedImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchedTextChangedImpl implements SearchedTextChanged {
  const _$SearchedTextChangedImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchEvent.searchedTextChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedTextChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedTextChangedImplCopyWith<_$SearchedTextChangedImpl> get copyWith =>
      __$$SearchedTextChangedImplCopyWithImpl<_$SearchedTextChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<CharacterModel> characterModelList)
        updateListItems,
    required TResult Function() loading,
  }) {
    return searchedTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult? Function()? loading,
  }) {
    return searchedTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (searchedTextChanged != null) {
      return searchedTextChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedTextChanged value) searchedTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
    required TResult Function(Loading value) loading,
  }) {
    return searchedTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged value)? searchedTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
    TResult? Function(Loading value)? loading,
  }) {
    return searchedTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged value)? searchedTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (searchedTextChanged != null) {
      return searchedTextChanged(this);
    }
    return orElse();
  }
}

abstract class SearchedTextChanged implements SearchEvent {
  const factory SearchedTextChanged({required final String text}) =
      _$SearchedTextChangedImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchedTextChangedImplCopyWith<_$SearchedTextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateListItemsImplCopyWith<$Res> {
  factory _$$UpdateListItemsImplCopyWith(_$UpdateListItemsImpl value,
          $Res Function(_$UpdateListItemsImpl) then) =
      __$$UpdateListItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResultModel<CharacterModel> characterModelList});

  $ApiResultModelCopyWith<CharacterModel, $Res> get characterModelList;
}

/// @nodoc
class __$$UpdateListItemsImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$UpdateListItemsImpl>
    implements _$$UpdateListItemsImplCopyWith<$Res> {
  __$$UpdateListItemsImplCopyWithImpl(
      _$UpdateListItemsImpl _value, $Res Function(_$UpdateListItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterModelList = null,
  }) {
    return _then(_$UpdateListItemsImpl(
      characterModelList: null == characterModelList
          ? _value.characterModelList
          : characterModelList // ignore: cast_nullable_to_non_nullable
              as ApiResultModel<CharacterModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultModelCopyWith<CharacterModel, $Res> get characterModelList {
    return $ApiResultModelCopyWith<CharacterModel, $Res>(
        _value.characterModelList, (value) {
      return _then(_value.copyWith(characterModelList: value));
    });
  }
}

/// @nodoc

class _$UpdateListItemsImpl implements UpdateListItems {
  const _$UpdateListItemsImpl({required this.characterModelList});

  @override
  final ApiResultModel<CharacterModel> characterModelList;

  @override
  String toString() {
    return 'SearchEvent.updateListItems(characterModelList: $characterModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListItemsImpl &&
            (identical(other.characterModelList, characterModelList) ||
                other.characterModelList == characterModelList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterModelList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListItemsImplCopyWith<_$UpdateListItemsImpl> get copyWith =>
      __$$UpdateListItemsImplCopyWithImpl<_$UpdateListItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<CharacterModel> characterModelList)
        updateListItems,
    required TResult Function() loading,
  }) {
    return updateListItems(characterModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult? Function()? loading,
  }) {
    return updateListItems?.call(characterModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (updateListItems != null) {
      return updateListItems(characterModelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedTextChanged value) searchedTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
    required TResult Function(Loading value) loading,
  }) {
    return updateListItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged value)? searchedTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
    TResult? Function(Loading value)? loading,
  }) {
    return updateListItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged value)? searchedTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (updateListItems != null) {
      return updateListItems(this);
    }
    return orElse();
  }
}

abstract class UpdateListItems implements SearchEvent {
  const factory UpdateListItems(
          {required final ApiResultModel<CharacterModel> characterModelList}) =
      _$UpdateListItemsImpl;

  ApiResultModel<CharacterModel> get characterModelList;
  @JsonKey(ignore: true)
  _$$UpdateListItemsImplCopyWith<_$UpdateListItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<CharacterModel> characterModelList)
        updateListItems,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<CharacterModel> characterModelList)?
        updateListItems,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedTextChanged value) searchedTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged value)? searchedTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged value)? searchedTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchEvent {
  const factory Loading() = _$LoadingImpl;
}
