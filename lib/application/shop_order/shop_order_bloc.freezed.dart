// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopOrderEventTearOff {
  const _$ShopOrderEventTearOff();

  OnPageStarted onPageStarted() {
    return const OnPageStarted();
  }

  OnAddUserPressed onAddUserPressed() {
    return const OnAddUserPressed();
  }

  OnAddShopOrderPressed onAddShopOrderPressed() {
    return const OnAddShopOrderPressed();
  }

  OnDeleteShopOrderPressed onDeleteShopOrderPressed(int id) {
    return OnDeleteShopOrderPressed(
      id,
    );
  }

  OnSortShopOrderPressed onSortShopOrderPressed(
      int columnIndex, bool isAscending) {
    return OnSortShopOrderPressed(
      columnIndex,
      isAscending,
    );
  }
}

/// @nodoc
const $ShopOrderEvent = _$ShopOrderEventTearOff();

/// @nodoc
mixin _$ShopOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageStarted,
    required TResult Function() onAddUserPressed,
    required TResult Function() onAddShopOrderPressed,
    required TResult Function(int id) onDeleteShopOrderPressed,
    required TResult Function(int columnIndex, bool isAscending)
        onSortShopOrderPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageStarted,
    TResult Function()? onAddUserPressed,
    TResult Function()? onAddShopOrderPressed,
    TResult Function(int id)? onDeleteShopOrderPressed,
    TResult Function(int columnIndex, bool isAscending)? onSortShopOrderPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageStarted value) onPageStarted,
    required TResult Function(OnAddUserPressed value) onAddUserPressed,
    required TResult Function(OnAddShopOrderPressed value)
        onAddShopOrderPressed,
    required TResult Function(OnDeleteShopOrderPressed value)
        onDeleteShopOrderPressed,
    required TResult Function(OnSortShopOrderPressed value)
        onSortShopOrderPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageStarted value)? onPageStarted,
    TResult Function(OnAddUserPressed value)? onAddUserPressed,
    TResult Function(OnAddShopOrderPressed value)? onAddShopOrderPressed,
    TResult Function(OnDeleteShopOrderPressed value)? onDeleteShopOrderPressed,
    TResult Function(OnSortShopOrderPressed value)? onSortShopOrderPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrderEventCopyWith<$Res> {
  factory $ShopOrderEventCopyWith(
          ShopOrderEvent value, $Res Function(ShopOrderEvent) then) =
      _$ShopOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopOrderEventCopyWithImpl<$Res>
    implements $ShopOrderEventCopyWith<$Res> {
  _$ShopOrderEventCopyWithImpl(this._value, this._then);

  final ShopOrderEvent _value;
  // ignore: unused_field
  final $Res Function(ShopOrderEvent) _then;
}

/// @nodoc
abstract class $OnPageStartedCopyWith<$Res> {
  factory $OnPageStartedCopyWith(
          OnPageStarted value, $Res Function(OnPageStarted) then) =
      _$OnPageStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnPageStartedCopyWithImpl<$Res>
    extends _$ShopOrderEventCopyWithImpl<$Res>
    implements $OnPageStartedCopyWith<$Res> {
  _$OnPageStartedCopyWithImpl(
      OnPageStarted _value, $Res Function(OnPageStarted) _then)
      : super(_value, (v) => _then(v as OnPageStarted));

  @override
  OnPageStarted get _value => super._value as OnPageStarted;
}

/// @nodoc

class _$OnPageStarted implements OnPageStarted {
  const _$OnPageStarted();

  @override
  String toString() {
    return 'ShopOrderEvent.onPageStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnPageStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageStarted,
    required TResult Function() onAddUserPressed,
    required TResult Function() onAddShopOrderPressed,
    required TResult Function(int id) onDeleteShopOrderPressed,
    required TResult Function(int columnIndex, bool isAscending)
        onSortShopOrderPressed,
  }) {
    return onPageStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageStarted,
    TResult Function()? onAddUserPressed,
    TResult Function()? onAddShopOrderPressed,
    TResult Function(int id)? onDeleteShopOrderPressed,
    TResult Function(int columnIndex, bool isAscending)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onPageStarted != null) {
      return onPageStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageStarted value) onPageStarted,
    required TResult Function(OnAddUserPressed value) onAddUserPressed,
    required TResult Function(OnAddShopOrderPressed value)
        onAddShopOrderPressed,
    required TResult Function(OnDeleteShopOrderPressed value)
        onDeleteShopOrderPressed,
    required TResult Function(OnSortShopOrderPressed value)
        onSortShopOrderPressed,
  }) {
    return onPageStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageStarted value)? onPageStarted,
    TResult Function(OnAddUserPressed value)? onAddUserPressed,
    TResult Function(OnAddShopOrderPressed value)? onAddShopOrderPressed,
    TResult Function(OnDeleteShopOrderPressed value)? onDeleteShopOrderPressed,
    TResult Function(OnSortShopOrderPressed value)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onPageStarted != null) {
      return onPageStarted(this);
    }
    return orElse();
  }
}

abstract class OnPageStarted implements ShopOrderEvent {
  const factory OnPageStarted() = _$OnPageStarted;
}

/// @nodoc
abstract class $OnAddUserPressedCopyWith<$Res> {
  factory $OnAddUserPressedCopyWith(
          OnAddUserPressed value, $Res Function(OnAddUserPressed) then) =
      _$OnAddUserPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnAddUserPressedCopyWithImpl<$Res>
    extends _$ShopOrderEventCopyWithImpl<$Res>
    implements $OnAddUserPressedCopyWith<$Res> {
  _$OnAddUserPressedCopyWithImpl(
      OnAddUserPressed _value, $Res Function(OnAddUserPressed) _then)
      : super(_value, (v) => _then(v as OnAddUserPressed));

  @override
  OnAddUserPressed get _value => super._value as OnAddUserPressed;
}

/// @nodoc

class _$OnAddUserPressed implements OnAddUserPressed {
  const _$OnAddUserPressed();

  @override
  String toString() {
    return 'ShopOrderEvent.onAddUserPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnAddUserPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageStarted,
    required TResult Function() onAddUserPressed,
    required TResult Function() onAddShopOrderPressed,
    required TResult Function(int id) onDeleteShopOrderPressed,
    required TResult Function(int columnIndex, bool isAscending)
        onSortShopOrderPressed,
  }) {
    return onAddUserPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageStarted,
    TResult Function()? onAddUserPressed,
    TResult Function()? onAddShopOrderPressed,
    TResult Function(int id)? onDeleteShopOrderPressed,
    TResult Function(int columnIndex, bool isAscending)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onAddUserPressed != null) {
      return onAddUserPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageStarted value) onPageStarted,
    required TResult Function(OnAddUserPressed value) onAddUserPressed,
    required TResult Function(OnAddShopOrderPressed value)
        onAddShopOrderPressed,
    required TResult Function(OnDeleteShopOrderPressed value)
        onDeleteShopOrderPressed,
    required TResult Function(OnSortShopOrderPressed value)
        onSortShopOrderPressed,
  }) {
    return onAddUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageStarted value)? onPageStarted,
    TResult Function(OnAddUserPressed value)? onAddUserPressed,
    TResult Function(OnAddShopOrderPressed value)? onAddShopOrderPressed,
    TResult Function(OnDeleteShopOrderPressed value)? onDeleteShopOrderPressed,
    TResult Function(OnSortShopOrderPressed value)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onAddUserPressed != null) {
      return onAddUserPressed(this);
    }
    return orElse();
  }
}

abstract class OnAddUserPressed implements ShopOrderEvent {
  const factory OnAddUserPressed() = _$OnAddUserPressed;
}

/// @nodoc
abstract class $OnAddShopOrderPressedCopyWith<$Res> {
  factory $OnAddShopOrderPressedCopyWith(OnAddShopOrderPressed value,
          $Res Function(OnAddShopOrderPressed) then) =
      _$OnAddShopOrderPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnAddShopOrderPressedCopyWithImpl<$Res>
    extends _$ShopOrderEventCopyWithImpl<$Res>
    implements $OnAddShopOrderPressedCopyWith<$Res> {
  _$OnAddShopOrderPressedCopyWithImpl(
      OnAddShopOrderPressed _value, $Res Function(OnAddShopOrderPressed) _then)
      : super(_value, (v) => _then(v as OnAddShopOrderPressed));

  @override
  OnAddShopOrderPressed get _value => super._value as OnAddShopOrderPressed;
}

/// @nodoc

class _$OnAddShopOrderPressed implements OnAddShopOrderPressed {
  const _$OnAddShopOrderPressed();

  @override
  String toString() {
    return 'ShopOrderEvent.onAddShopOrderPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnAddShopOrderPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageStarted,
    required TResult Function() onAddUserPressed,
    required TResult Function() onAddShopOrderPressed,
    required TResult Function(int id) onDeleteShopOrderPressed,
    required TResult Function(int columnIndex, bool isAscending)
        onSortShopOrderPressed,
  }) {
    return onAddShopOrderPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageStarted,
    TResult Function()? onAddUserPressed,
    TResult Function()? onAddShopOrderPressed,
    TResult Function(int id)? onDeleteShopOrderPressed,
    TResult Function(int columnIndex, bool isAscending)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onAddShopOrderPressed != null) {
      return onAddShopOrderPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageStarted value) onPageStarted,
    required TResult Function(OnAddUserPressed value) onAddUserPressed,
    required TResult Function(OnAddShopOrderPressed value)
        onAddShopOrderPressed,
    required TResult Function(OnDeleteShopOrderPressed value)
        onDeleteShopOrderPressed,
    required TResult Function(OnSortShopOrderPressed value)
        onSortShopOrderPressed,
  }) {
    return onAddShopOrderPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageStarted value)? onPageStarted,
    TResult Function(OnAddUserPressed value)? onAddUserPressed,
    TResult Function(OnAddShopOrderPressed value)? onAddShopOrderPressed,
    TResult Function(OnDeleteShopOrderPressed value)? onDeleteShopOrderPressed,
    TResult Function(OnSortShopOrderPressed value)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onAddShopOrderPressed != null) {
      return onAddShopOrderPressed(this);
    }
    return orElse();
  }
}

abstract class OnAddShopOrderPressed implements ShopOrderEvent {
  const factory OnAddShopOrderPressed() = _$OnAddShopOrderPressed;
}

/// @nodoc
abstract class $OnDeleteShopOrderPressedCopyWith<$Res> {
  factory $OnDeleteShopOrderPressedCopyWith(OnDeleteShopOrderPressed value,
          $Res Function(OnDeleteShopOrderPressed) then) =
      _$OnDeleteShopOrderPressedCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$OnDeleteShopOrderPressedCopyWithImpl<$Res>
    extends _$ShopOrderEventCopyWithImpl<$Res>
    implements $OnDeleteShopOrderPressedCopyWith<$Res> {
  _$OnDeleteShopOrderPressedCopyWithImpl(OnDeleteShopOrderPressed _value,
      $Res Function(OnDeleteShopOrderPressed) _then)
      : super(_value, (v) => _then(v as OnDeleteShopOrderPressed));

  @override
  OnDeleteShopOrderPressed get _value =>
      super._value as OnDeleteShopOrderPressed;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnDeleteShopOrderPressed(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnDeleteShopOrderPressed implements OnDeleteShopOrderPressed {
  const _$OnDeleteShopOrderPressed(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ShopOrderEvent.onDeleteShopOrderPressed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnDeleteShopOrderPressed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OnDeleteShopOrderPressedCopyWith<OnDeleteShopOrderPressed> get copyWith =>
      _$OnDeleteShopOrderPressedCopyWithImpl<OnDeleteShopOrderPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageStarted,
    required TResult Function() onAddUserPressed,
    required TResult Function() onAddShopOrderPressed,
    required TResult Function(int id) onDeleteShopOrderPressed,
    required TResult Function(int columnIndex, bool isAscending)
        onSortShopOrderPressed,
  }) {
    return onDeleteShopOrderPressed(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageStarted,
    TResult Function()? onAddUserPressed,
    TResult Function()? onAddShopOrderPressed,
    TResult Function(int id)? onDeleteShopOrderPressed,
    TResult Function(int columnIndex, bool isAscending)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onDeleteShopOrderPressed != null) {
      return onDeleteShopOrderPressed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageStarted value) onPageStarted,
    required TResult Function(OnAddUserPressed value) onAddUserPressed,
    required TResult Function(OnAddShopOrderPressed value)
        onAddShopOrderPressed,
    required TResult Function(OnDeleteShopOrderPressed value)
        onDeleteShopOrderPressed,
    required TResult Function(OnSortShopOrderPressed value)
        onSortShopOrderPressed,
  }) {
    return onDeleteShopOrderPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageStarted value)? onPageStarted,
    TResult Function(OnAddUserPressed value)? onAddUserPressed,
    TResult Function(OnAddShopOrderPressed value)? onAddShopOrderPressed,
    TResult Function(OnDeleteShopOrderPressed value)? onDeleteShopOrderPressed,
    TResult Function(OnSortShopOrderPressed value)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onDeleteShopOrderPressed != null) {
      return onDeleteShopOrderPressed(this);
    }
    return orElse();
  }
}

abstract class OnDeleteShopOrderPressed implements ShopOrderEvent {
  const factory OnDeleteShopOrderPressed(int id) = _$OnDeleteShopOrderPressed;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnDeleteShopOrderPressedCopyWith<OnDeleteShopOrderPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSortShopOrderPressedCopyWith<$Res> {
  factory $OnSortShopOrderPressedCopyWith(OnSortShopOrderPressed value,
          $Res Function(OnSortShopOrderPressed) then) =
      _$OnSortShopOrderPressedCopyWithImpl<$Res>;
  $Res call({int columnIndex, bool isAscending});
}

/// @nodoc
class _$OnSortShopOrderPressedCopyWithImpl<$Res>
    extends _$ShopOrderEventCopyWithImpl<$Res>
    implements $OnSortShopOrderPressedCopyWith<$Res> {
  _$OnSortShopOrderPressedCopyWithImpl(OnSortShopOrderPressed _value,
      $Res Function(OnSortShopOrderPressed) _then)
      : super(_value, (v) => _then(v as OnSortShopOrderPressed));

  @override
  OnSortShopOrderPressed get _value => super._value as OnSortShopOrderPressed;

  @override
  $Res call({
    Object? columnIndex = freezed,
    Object? isAscending = freezed,
  }) {
    return _then(OnSortShopOrderPressed(
      columnIndex == freezed
          ? _value.columnIndex
          : columnIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isAscending == freezed
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnSortShopOrderPressed implements OnSortShopOrderPressed {
  const _$OnSortShopOrderPressed(this.columnIndex, this.isAscending);

  @override
  final int columnIndex;
  @override
  final bool isAscending;

  @override
  String toString() {
    return 'ShopOrderEvent.onSortShopOrderPressed(columnIndex: $columnIndex, isAscending: $isAscending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSortShopOrderPressed &&
            (identical(other.columnIndex, columnIndex) ||
                const DeepCollectionEquality()
                    .equals(other.columnIndex, columnIndex)) &&
            (identical(other.isAscending, isAscending) ||
                const DeepCollectionEquality()
                    .equals(other.isAscending, isAscending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(columnIndex) ^
      const DeepCollectionEquality().hash(isAscending);

  @JsonKey(ignore: true)
  @override
  $OnSortShopOrderPressedCopyWith<OnSortShopOrderPressed> get copyWith =>
      _$OnSortShopOrderPressedCopyWithImpl<OnSortShopOrderPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageStarted,
    required TResult Function() onAddUserPressed,
    required TResult Function() onAddShopOrderPressed,
    required TResult Function(int id) onDeleteShopOrderPressed,
    required TResult Function(int columnIndex, bool isAscending)
        onSortShopOrderPressed,
  }) {
    return onSortShopOrderPressed(columnIndex, isAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageStarted,
    TResult Function()? onAddUserPressed,
    TResult Function()? onAddShopOrderPressed,
    TResult Function(int id)? onDeleteShopOrderPressed,
    TResult Function(int columnIndex, bool isAscending)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onSortShopOrderPressed != null) {
      return onSortShopOrderPressed(columnIndex, isAscending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPageStarted value) onPageStarted,
    required TResult Function(OnAddUserPressed value) onAddUserPressed,
    required TResult Function(OnAddShopOrderPressed value)
        onAddShopOrderPressed,
    required TResult Function(OnDeleteShopOrderPressed value)
        onDeleteShopOrderPressed,
    required TResult Function(OnSortShopOrderPressed value)
        onSortShopOrderPressed,
  }) {
    return onSortShopOrderPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPageStarted value)? onPageStarted,
    TResult Function(OnAddUserPressed value)? onAddUserPressed,
    TResult Function(OnAddShopOrderPressed value)? onAddShopOrderPressed,
    TResult Function(OnDeleteShopOrderPressed value)? onDeleteShopOrderPressed,
    TResult Function(OnSortShopOrderPressed value)? onSortShopOrderPressed,
    required TResult orElse(),
  }) {
    if (onSortShopOrderPressed != null) {
      return onSortShopOrderPressed(this);
    }
    return orElse();
  }
}

abstract class OnSortShopOrderPressed implements ShopOrderEvent {
  const factory OnSortShopOrderPressed(int columnIndex, bool isAscending) =
      _$OnSortShopOrderPressed;

  int get columnIndex => throw _privateConstructorUsedError;
  bool get isAscending => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnSortShopOrderPressedCopyWith<OnSortShopOrderPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShopOrderStateTearOff {
  const _$ShopOrderStateTearOff();

  _ShopOrderState call(
      {required ShopOrderStatus status,
      required List<ShopOrder> shopOrders,
      required int shopOrderColumnIndex,
      required bool shopOrderIsAscending}) {
    return _ShopOrderState(
      status: status,
      shopOrders: shopOrders,
      shopOrderColumnIndex: shopOrderColumnIndex,
      shopOrderIsAscending: shopOrderIsAscending,
    );
  }
}

/// @nodoc
const $ShopOrderState = _$ShopOrderStateTearOff();

/// @nodoc
mixin _$ShopOrderState {
  ShopOrderStatus get status => throw _privateConstructorUsedError;
  List<ShopOrder> get shopOrders => throw _privateConstructorUsedError;
  int get shopOrderColumnIndex => throw _privateConstructorUsedError;
  bool get shopOrderIsAscending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopOrderStateCopyWith<ShopOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrderStateCopyWith<$Res> {
  factory $ShopOrderStateCopyWith(
          ShopOrderState value, $Res Function(ShopOrderState) then) =
      _$ShopOrderStateCopyWithImpl<$Res>;
  $Res call(
      {ShopOrderStatus status,
      List<ShopOrder> shopOrders,
      int shopOrderColumnIndex,
      bool shopOrderIsAscending});
}

/// @nodoc
class _$ShopOrderStateCopyWithImpl<$Res>
    implements $ShopOrderStateCopyWith<$Res> {
  _$ShopOrderStateCopyWithImpl(this._value, this._then);

  final ShopOrderState _value;
  // ignore: unused_field
  final $Res Function(ShopOrderState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? shopOrders = freezed,
    Object? shopOrderColumnIndex = freezed,
    Object? shopOrderIsAscending = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopOrderStatus,
      shopOrders: shopOrders == freezed
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as List<ShopOrder>,
      shopOrderColumnIndex: shopOrderColumnIndex == freezed
          ? _value.shopOrderColumnIndex
          : shopOrderColumnIndex // ignore: cast_nullable_to_non_nullable
              as int,
      shopOrderIsAscending: shopOrderIsAscending == freezed
          ? _value.shopOrderIsAscending
          : shopOrderIsAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ShopOrderStateCopyWith<$Res>
    implements $ShopOrderStateCopyWith<$Res> {
  factory _$ShopOrderStateCopyWith(
          _ShopOrderState value, $Res Function(_ShopOrderState) then) =
      __$ShopOrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ShopOrderStatus status,
      List<ShopOrder> shopOrders,
      int shopOrderColumnIndex,
      bool shopOrderIsAscending});
}

/// @nodoc
class __$ShopOrderStateCopyWithImpl<$Res>
    extends _$ShopOrderStateCopyWithImpl<$Res>
    implements _$ShopOrderStateCopyWith<$Res> {
  __$ShopOrderStateCopyWithImpl(
      _ShopOrderState _value, $Res Function(_ShopOrderState) _then)
      : super(_value, (v) => _then(v as _ShopOrderState));

  @override
  _ShopOrderState get _value => super._value as _ShopOrderState;

  @override
  $Res call({
    Object? status = freezed,
    Object? shopOrders = freezed,
    Object? shopOrderColumnIndex = freezed,
    Object? shopOrderIsAscending = freezed,
  }) {
    return _then(_ShopOrderState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopOrderStatus,
      shopOrders: shopOrders == freezed
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as List<ShopOrder>,
      shopOrderColumnIndex: shopOrderColumnIndex == freezed
          ? _value.shopOrderColumnIndex
          : shopOrderColumnIndex // ignore: cast_nullable_to_non_nullable
              as int,
      shopOrderIsAscending: shopOrderIsAscending == freezed
          ? _value.shopOrderIsAscending
          : shopOrderIsAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShopOrderState implements _ShopOrderState {
  const _$_ShopOrderState(
      {required this.status,
      required this.shopOrders,
      required this.shopOrderColumnIndex,
      required this.shopOrderIsAscending});

  @override
  final ShopOrderStatus status;
  @override
  final List<ShopOrder> shopOrders;
  @override
  final int shopOrderColumnIndex;
  @override
  final bool shopOrderIsAscending;

  @override
  String toString() {
    return 'ShopOrderState(status: $status, shopOrders: $shopOrders, shopOrderColumnIndex: $shopOrderColumnIndex, shopOrderIsAscending: $shopOrderIsAscending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopOrderState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.shopOrders, shopOrders) ||
                const DeepCollectionEquality()
                    .equals(other.shopOrders, shopOrders)) &&
            (identical(other.shopOrderColumnIndex, shopOrderColumnIndex) ||
                const DeepCollectionEquality().equals(
                    other.shopOrderColumnIndex, shopOrderColumnIndex)) &&
            (identical(other.shopOrderIsAscending, shopOrderIsAscending) ||
                const DeepCollectionEquality()
                    .equals(other.shopOrderIsAscending, shopOrderIsAscending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(shopOrders) ^
      const DeepCollectionEquality().hash(shopOrderColumnIndex) ^
      const DeepCollectionEquality().hash(shopOrderIsAscending);

  @JsonKey(ignore: true)
  @override
  _$ShopOrderStateCopyWith<_ShopOrderState> get copyWith =>
      __$ShopOrderStateCopyWithImpl<_ShopOrderState>(this, _$identity);
}

abstract class _ShopOrderState implements ShopOrderState {
  const factory _ShopOrderState(
      {required ShopOrderStatus status,
      required List<ShopOrder> shopOrders,
      required int shopOrderColumnIndex,
      required bool shopOrderIsAscending}) = _$_ShopOrderState;

  @override
  ShopOrderStatus get status => throw _privateConstructorUsedError;
  @override
  List<ShopOrder> get shopOrders => throw _privateConstructorUsedError;
  @override
  int get shopOrderColumnIndex => throw _privateConstructorUsedError;
  @override
  bool get shopOrderIsAscending => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopOrderStateCopyWith<_ShopOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
