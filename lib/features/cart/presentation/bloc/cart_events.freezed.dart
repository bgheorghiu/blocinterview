// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  ShopItem get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShopItem item) add,
    required TResult Function(ShopItem item) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShopItem item)? add,
    TResult? Function(ShopItem item)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShopItem item)? add,
    TResult Function(ShopItem item)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartAddEvent value) add,
    required TResult Function(CartRemoveEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartAddEvent value)? add,
    TResult? Function(CartRemoveEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartAddEvent value)? add,
    TResult Function(CartRemoveEvent value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEventCopyWith<CartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
  @useResult
  $Res call({ShopItem item});
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ShopItem,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartAddEventCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$CartAddEventCopyWith(
          _$CartAddEvent value, $Res Function(_$CartAddEvent) then) =
      __$$CartAddEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShopItem item});
}

/// @nodoc
class __$$CartAddEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartAddEvent>
    implements _$$CartAddEventCopyWith<$Res> {
  __$$CartAddEventCopyWithImpl(
      _$CartAddEvent _value, $Res Function(_$CartAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CartAddEvent(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ShopItem,
    ));
  }
}

/// @nodoc

class _$CartAddEvent implements CartAddEvent {
  const _$CartAddEvent({required this.item});

  @override
  final ShopItem item;

  @override
  String toString() {
    return 'CartEvent.add(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartAddEvent &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartAddEventCopyWith<_$CartAddEvent> get copyWith =>
      __$$CartAddEventCopyWithImpl<_$CartAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShopItem item) add,
    required TResult Function(ShopItem item) remove,
  }) {
    return add(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShopItem item)? add,
    TResult? Function(ShopItem item)? remove,
  }) {
    return add?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShopItem item)? add,
    TResult Function(ShopItem item)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartAddEvent value) add,
    required TResult Function(CartRemoveEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartAddEvent value)? add,
    TResult? Function(CartRemoveEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartAddEvent value)? add,
    TResult Function(CartRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CartAddEvent implements CartEvent {
  const factory CartAddEvent({required final ShopItem item}) = _$CartAddEvent;

  @override
  ShopItem get item;
  @override
  @JsonKey(ignore: true)
  _$$CartAddEventCopyWith<_$CartAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartRemoveEventCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$CartRemoveEventCopyWith(
          _$CartRemoveEvent value, $Res Function(_$CartRemoveEvent) then) =
      __$$CartRemoveEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShopItem item});
}

/// @nodoc
class __$$CartRemoveEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartRemoveEvent>
    implements _$$CartRemoveEventCopyWith<$Res> {
  __$$CartRemoveEventCopyWithImpl(
      _$CartRemoveEvent _value, $Res Function(_$CartRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CartRemoveEvent(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ShopItem,
    ));
  }
}

/// @nodoc

class _$CartRemoveEvent implements CartRemoveEvent {
  const _$CartRemoveEvent({required this.item});

  @override
  final ShopItem item;

  @override
  String toString() {
    return 'CartEvent.remove(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartRemoveEvent &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartRemoveEventCopyWith<_$CartRemoveEvent> get copyWith =>
      __$$CartRemoveEventCopyWithImpl<_$CartRemoveEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShopItem item) add,
    required TResult Function(ShopItem item) remove,
  }) {
    return remove(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShopItem item)? add,
    TResult? Function(ShopItem item)? remove,
  }) {
    return remove?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShopItem item)? add,
    TResult Function(ShopItem item)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartAddEvent value) add,
    required TResult Function(CartRemoveEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartAddEvent value)? add,
    TResult? Function(CartRemoveEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartAddEvent value)? add,
    TResult Function(CartRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class CartRemoveEvent implements CartEvent {
  const factory CartRemoveEvent({required final ShopItem item}) =
      _$CartRemoveEvent;

  @override
  ShopItem get item;
  @override
  @JsonKey(ignore: true)
  _$$CartRemoveEventCopyWith<_$CartRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
