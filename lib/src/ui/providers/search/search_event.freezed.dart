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
mixin _$SearchEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<T> modelList) updateListItems,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<T> modelList)? updateListItems,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<T> modelList)? updateListItems,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedTextChanged<T> value) searchedTextChanged,
    required TResult Function(UpdateListItems<T> value) updateListItems,
    required TResult Function(Loading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult? Function(UpdateListItems<T> value)? updateListItems,
    TResult? Function(Loading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult Function(UpdateListItems<T> value)? updateListItems,
    TResult Function(Loading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<T, $Res> {
  factory $SearchEventCopyWith(
          SearchEvent<T> value, $Res Function(SearchEvent<T>) then) =
      _$SearchEventCopyWithImpl<T, $Res, SearchEvent<T>>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<T, $Res, $Val extends SearchEvent<T>>
    implements $SearchEventCopyWith<T, $Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchedTextChangedImplCopyWith<T, $Res> {
  factory _$$SearchedTextChangedImplCopyWith(_$SearchedTextChangedImpl<T> value,
          $Res Function(_$SearchedTextChangedImpl<T>) then) =
      __$$SearchedTextChangedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchedTextChangedImplCopyWithImpl<T, $Res>
    extends _$SearchEventCopyWithImpl<T, $Res, _$SearchedTextChangedImpl<T>>
    implements _$$SearchedTextChangedImplCopyWith<T, $Res> {
  __$$SearchedTextChangedImplCopyWithImpl(_$SearchedTextChangedImpl<T> _value,
      $Res Function(_$SearchedTextChangedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchedTextChangedImpl<T>(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchedTextChangedImpl<T> implements SearchedTextChanged<T> {
  const _$SearchedTextChangedImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchEvent<$T>.searchedTextChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedTextChangedImpl<T> &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedTextChangedImplCopyWith<T, _$SearchedTextChangedImpl<T>>
      get copyWith => __$$SearchedTextChangedImplCopyWithImpl<T,
          _$SearchedTextChangedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<T> modelList) updateListItems,
    required TResult Function() loading,
  }) {
    return searchedTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<T> modelList)? updateListItems,
    TResult? Function()? loading,
  }) {
    return searchedTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<T> modelList)? updateListItems,
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
    required TResult Function(SearchedTextChanged<T> value) searchedTextChanged,
    required TResult Function(UpdateListItems<T> value) updateListItems,
    required TResult Function(Loading<T> value) loading,
  }) {
    return searchedTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult? Function(UpdateListItems<T> value)? updateListItems,
    TResult? Function(Loading<T> value)? loading,
  }) {
    return searchedTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult Function(UpdateListItems<T> value)? updateListItems,
    TResult Function(Loading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (searchedTextChanged != null) {
      return searchedTextChanged(this);
    }
    return orElse();
  }
}

abstract class SearchedTextChanged<T> implements SearchEvent<T> {
  const factory SearchedTextChanged({required final String text}) =
      _$SearchedTextChangedImpl<T>;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchedTextChangedImplCopyWith<T, _$SearchedTextChangedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateListItemsImplCopyWith<T, $Res> {
  factory _$$UpdateListItemsImplCopyWith(_$UpdateListItemsImpl<T> value,
          $Res Function(_$UpdateListItemsImpl<T>) then) =
      __$$UpdateListItemsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiResultModel<T> modelList});

  $ApiResultModelCopyWith<T, $Res> get modelList;
}

/// @nodoc
class __$$UpdateListItemsImplCopyWithImpl<T, $Res>
    extends _$SearchEventCopyWithImpl<T, $Res, _$UpdateListItemsImpl<T>>
    implements _$$UpdateListItemsImplCopyWith<T, $Res> {
  __$$UpdateListItemsImplCopyWithImpl(_$UpdateListItemsImpl<T> _value,
      $Res Function(_$UpdateListItemsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelList = null,
  }) {
    return _then(_$UpdateListItemsImpl<T>(
      modelList: null == modelList
          ? _value.modelList
          : modelList // ignore: cast_nullable_to_non_nullable
              as ApiResultModel<T>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultModelCopyWith<T, $Res> get modelList {
    return $ApiResultModelCopyWith<T, $Res>(_value.modelList, (value) {
      return _then(_value.copyWith(modelList: value));
    });
  }
}

/// @nodoc

class _$UpdateListItemsImpl<T> implements UpdateListItems<T> {
  const _$UpdateListItemsImpl({required this.modelList});

  @override
  final ApiResultModel<T> modelList;

  @override
  String toString() {
    return 'SearchEvent<$T>.updateListItems(modelList: $modelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListItemsImpl<T> &&
            (identical(other.modelList, modelList) ||
                other.modelList == modelList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modelList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListItemsImplCopyWith<T, _$UpdateListItemsImpl<T>> get copyWith =>
      __$$UpdateListItemsImplCopyWithImpl<T, _$UpdateListItemsImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<T> modelList) updateListItems,
    required TResult Function() loading,
  }) {
    return updateListItems(modelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<T> modelList)? updateListItems,
    TResult? Function()? loading,
  }) {
    return updateListItems?.call(modelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<T> modelList)? updateListItems,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (updateListItems != null) {
      return updateListItems(modelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedTextChanged<T> value) searchedTextChanged,
    required TResult Function(UpdateListItems<T> value) updateListItems,
    required TResult Function(Loading<T> value) loading,
  }) {
    return updateListItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult? Function(UpdateListItems<T> value)? updateListItems,
    TResult? Function(Loading<T> value)? loading,
  }) {
    return updateListItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult Function(UpdateListItems<T> value)? updateListItems,
    TResult Function(Loading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (updateListItems != null) {
      return updateListItems(this);
    }
    return orElse();
  }
}

abstract class UpdateListItems<T> implements SearchEvent<T> {
  const factory UpdateListItems({required final ApiResultModel<T> modelList}) =
      _$UpdateListItemsImpl<T>;

  ApiResultModel<T> get modelList;
  @JsonKey(ignore: true)
  _$$UpdateListItemsImplCopyWith<T, _$UpdateListItemsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$SearchEventCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchEvent<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedTextChanged,
    required TResult Function(ApiResultModel<T> modelList) updateListItems,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedTextChanged,
    TResult? Function(ApiResultModel<T> modelList)? updateListItems,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedTextChanged,
    TResult Function(ApiResultModel<T> modelList)? updateListItems,
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
    required TResult Function(SearchedTextChanged<T> value) searchedTextChanged,
    required TResult Function(UpdateListItems<T> value) updateListItems,
    required TResult Function(Loading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult? Function(UpdateListItems<T> value)? updateListItems,
    TResult? Function(Loading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedTextChanged<T> value)? searchedTextChanged,
    TResult Function(UpdateListItems<T> value)? updateListItems,
    TResult Function(Loading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements SearchEvent<T> {
  const factory Loading() = _$LoadingImpl<T>;
}
