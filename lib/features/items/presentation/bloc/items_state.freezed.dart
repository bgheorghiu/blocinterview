// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<ShopItem> items) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<ShopItem> items)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<ShopItem> items)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsInitial value) initial,
    required TResult Function(ItemsLoading value) loading,
    required TResult Function(ItemsError value) error,
    required TResult Function(ItemsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsInitial value)? initial,
    TResult? Function(ItemsLoading value)? loading,
    TResult? Function(ItemsError value)? error,
    TResult? Function(ItemsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsInitial value)? initial,
    TResult Function(ItemsLoading value)? loading,
    TResult Function(ItemsError value)? error,
    TResult Function(ItemsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res, ItemsState>;
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res, $Val extends ItemsState>
    implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ItemsInitialCopyWith<$Res> {
  factory _$$ItemsInitialCopyWith(
          _$ItemsInitial value, $Res Function(_$ItemsInitial) then) =
      __$$ItemsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemsInitialCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ItemsInitial>
    implements _$$ItemsInitialCopyWith<$Res> {
  __$$ItemsInitialCopyWithImpl(
      _$ItemsInitial _value, $Res Function(_$ItemsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemsInitial implements ItemsInitial {
  const _$ItemsInitial();

  @override
  String toString() {
    return 'ItemsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<ShopItem> items) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<ShopItem> items)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<ShopItem> items)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsInitial value) initial,
    required TResult Function(ItemsLoading value) loading,
    required TResult Function(ItemsError value) error,
    required TResult Function(ItemsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsInitial value)? initial,
    TResult? Function(ItemsLoading value)? loading,
    TResult? Function(ItemsError value)? error,
    TResult? Function(ItemsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsInitial value)? initial,
    TResult Function(ItemsLoading value)? loading,
    TResult Function(ItemsError value)? error,
    TResult Function(ItemsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ItemsInitial implements ItemsState {
  const factory ItemsInitial() = _$ItemsInitial;
}

/// @nodoc
abstract class _$$ItemsLoadingCopyWith<$Res> {
  factory _$$ItemsLoadingCopyWith(
          _$ItemsLoading value, $Res Function(_$ItemsLoading) then) =
      __$$ItemsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemsLoadingCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ItemsLoading>
    implements _$$ItemsLoadingCopyWith<$Res> {
  __$$ItemsLoadingCopyWithImpl(
      _$ItemsLoading _value, $Res Function(_$ItemsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemsLoading implements ItemsLoading {
  const _$ItemsLoading();

  @override
  String toString() {
    return 'ItemsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<ShopItem> items) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<ShopItem> items)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<ShopItem> items)? loaded,
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
    required TResult Function(ItemsInitial value) initial,
    required TResult Function(ItemsLoading value) loading,
    required TResult Function(ItemsError value) error,
    required TResult Function(ItemsLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsInitial value)? initial,
    TResult? Function(ItemsLoading value)? loading,
    TResult? Function(ItemsError value)? error,
    TResult? Function(ItemsLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsInitial value)? initial,
    TResult Function(ItemsLoading value)? loading,
    TResult Function(ItemsError value)? error,
    TResult Function(ItemsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ItemsLoading implements ItemsState {
  const factory ItemsLoading() = _$ItemsLoading;
}

/// @nodoc
abstract class _$$ItemsErrorCopyWith<$Res> {
  factory _$$ItemsErrorCopyWith(
          _$ItemsError value, $Res Function(_$ItemsError) then) =
      __$$ItemsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ItemsErrorCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ItemsError>
    implements _$$ItemsErrorCopyWith<$Res> {
  __$$ItemsErrorCopyWithImpl(
      _$ItemsError _value, $Res Function(_$ItemsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ItemsError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemsError implements ItemsError {
  const _$ItemsError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ItemsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsErrorCopyWith<_$ItemsError> get copyWith =>
      __$$ItemsErrorCopyWithImpl<_$ItemsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<ShopItem> items) loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<ShopItem> items)? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<ShopItem> items)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsInitial value) initial,
    required TResult Function(ItemsLoading value) loading,
    required TResult Function(ItemsError value) error,
    required TResult Function(ItemsLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsInitial value)? initial,
    TResult? Function(ItemsLoading value)? loading,
    TResult? Function(ItemsError value)? error,
    TResult? Function(ItemsLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsInitial value)? initial,
    TResult Function(ItemsLoading value)? loading,
    TResult Function(ItemsError value)? error,
    TResult Function(ItemsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ItemsError implements ItemsState {
  const factory ItemsError({required final String error}) = _$ItemsError;

  String get error;
  @JsonKey(ignore: true)
  _$$ItemsErrorCopyWith<_$ItemsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemsLoadedCopyWith<$Res> {
  factory _$$ItemsLoadedCopyWith(
          _$ItemsLoaded value, $Res Function(_$ItemsLoaded) then) =
      __$$ItemsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShopItem> items});
}

/// @nodoc
class __$$ItemsLoadedCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ItemsLoaded>
    implements _$$ItemsLoadedCopyWith<$Res> {
  __$$ItemsLoadedCopyWithImpl(
      _$ItemsLoaded _value, $Res Function(_$ItemsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ItemsLoaded(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShopItem>,
    ));
  }
}

/// @nodoc

class _$ItemsLoaded implements ItemsLoaded {
  const _$ItemsLoaded({required final List<ShopItem> items}) : _items = items;

  final List<ShopItem> _items;
  @override
  List<ShopItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsLoaded &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsLoadedCopyWith<_$ItemsLoaded> get copyWith =>
      __$$ItemsLoadedCopyWithImpl<_$ItemsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<ShopItem> items) loaded,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<ShopItem> items)? loaded,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<ShopItem> items)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsInitial value) initial,
    required TResult Function(ItemsLoading value) loading,
    required TResult Function(ItemsError value) error,
    required TResult Function(ItemsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsInitial value)? initial,
    TResult? Function(ItemsLoading value)? loading,
    TResult? Function(ItemsError value)? error,
    TResult? Function(ItemsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsInitial value)? initial,
    TResult Function(ItemsLoading value)? loading,
    TResult Function(ItemsError value)? error,
    TResult Function(ItemsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ItemsLoaded implements ItemsState {
  const factory ItemsLoaded({required final List<ShopItem> items}) =
      _$ItemsLoaded;

  List<ShopItem> get items;
  @JsonKey(ignore: true)
  _$$ItemsLoadedCopyWith<_$ItemsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
