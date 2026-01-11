// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoinEntity {
  String get id;
  String get symbol;
  String get name;
  String get image;
  double get currentPrice;
  double get priceChangeLastDay;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinEntityCopyWith<CoinEntity> get copyWith =>
      _$CoinEntityCopyWithImpl<CoinEntity>(this as CoinEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoinEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChangeLastDay, priceChangeLastDay) ||
                other.priceChangeLastDay == priceChangeLastDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, symbol, name, image, currentPrice, priceChangeLastDay);

  @override
  String toString() {
    return 'CoinEntity(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, priceChangeLastDay: $priceChangeLastDay)';
  }
}

/// @nodoc
abstract mixin class $CoinEntityCopyWith<$Res> {
  factory $CoinEntityCopyWith(
          CoinEntity value, $Res Function(CoinEntity) _then) =
      _$CoinEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      double currentPrice,
      double priceChangeLastDay});
}

/// @nodoc
class _$CoinEntityCopyWithImpl<$Res> implements $CoinEntityCopyWith<$Res> {
  _$CoinEntityCopyWithImpl(this._self, this._then);

  final CoinEntity _self;
  final $Res Function(CoinEntity) _then;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? priceChangeLastDay = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _self.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangeLastDay: null == priceChangeLastDay
          ? _self.priceChangeLastDay
          : priceChangeLastDay // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoinEntity].
extension CoinEntityPatterns on CoinEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CoinEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CoinEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CoinEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String symbol, String name, String image,
            double currentPrice, double priceChangeLastDay)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinEntity() when $default != null:
        return $default(_that.id, _that.symbol, _that.name, _that.image,
            _that.currentPrice, _that.priceChangeLastDay);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String symbol, String name, String image,
            double currentPrice, double priceChangeLastDay)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinEntity():
        return $default(_that.id, _that.symbol, _that.name, _that.image,
            _that.currentPrice, _that.priceChangeLastDay);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String symbol, String name, String image,
            double currentPrice, double priceChangeLastDay)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinEntity() when $default != null:
        return $default(_that.id, _that.symbol, _that.name, _that.image,
            _that.currentPrice, _that.priceChangeLastDay);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CoinEntity implements CoinEntity {
  const _CoinEntity(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      required this.currentPrice,
      required this.priceChangeLastDay});

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  final double currentPrice;
  @override
  final double priceChangeLastDay;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoinEntityCopyWith<_CoinEntity> get copyWith =>
      __$CoinEntityCopyWithImpl<_CoinEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChangeLastDay, priceChangeLastDay) ||
                other.priceChangeLastDay == priceChangeLastDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, symbol, name, image, currentPrice, priceChangeLastDay);

  @override
  String toString() {
    return 'CoinEntity(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, priceChangeLastDay: $priceChangeLastDay)';
  }
}

/// @nodoc
abstract mixin class _$CoinEntityCopyWith<$Res>
    implements $CoinEntityCopyWith<$Res> {
  factory _$CoinEntityCopyWith(
          _CoinEntity value, $Res Function(_CoinEntity) _then) =
      __$CoinEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      double currentPrice,
      double priceChangeLastDay});
}

/// @nodoc
class __$CoinEntityCopyWithImpl<$Res> implements _$CoinEntityCopyWith<$Res> {
  __$CoinEntityCopyWithImpl(this._self, this._then);

  final _CoinEntity _self;
  final $Res Function(_CoinEntity) _then;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? priceChangeLastDay = null,
  }) {
    return _then(_CoinEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _self.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangeLastDay: null == priceChangeLastDay
          ? _self.priceChangeLastDay
          : priceChangeLastDay // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
