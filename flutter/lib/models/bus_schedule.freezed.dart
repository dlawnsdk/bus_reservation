// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusSchedule _$BusScheduleFromJson(Map<String, dynamic> json) {
  return BusSchedule.fromJson(json);
}

/// @nodoc
mixin _$BusSchedule {
  int? get scheduleId => throw _privateConstructorUsedError;
  set scheduleId(int? value) => throw _privateConstructorUsedError;
  Bus get bus => throw _privateConstructorUsedError;
  set bus(Bus value) => throw _privateConstructorUsedError;
  BusRoute get busRoute => throw _privateConstructorUsedError;
  set busRoute(BusRoute value) => throw _privateConstructorUsedError;
  String get departureTime => throw _privateConstructorUsedError;
  set departureTime(String value) => throw _privateConstructorUsedError;
  int get ticketPrice => throw _privateConstructorUsedError;
  set ticketPrice(int value) => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  set discount(int value) => throw _privateConstructorUsedError;
  int get processingFee => throw _privateConstructorUsedError;
  set processingFee(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusScheduleCopyWith<BusSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusScheduleCopyWith<$Res> {
  factory $BusScheduleCopyWith(
          BusSchedule value, $Res Function(BusSchedule) then) =
      _$BusScheduleCopyWithImpl<$Res, BusSchedule>;
  @useResult
  $Res call(
      {int? scheduleId,
      Bus bus,
      BusRoute busRoute,
      String departureTime,
      int ticketPrice,
      int discount,
      int processingFee});

  $BusCopyWith<$Res> get bus;
}

/// @nodoc
class _$BusScheduleCopyWithImpl<$Res, $Val extends BusSchedule>
    implements $BusScheduleCopyWith<$Res> {
  _$BusScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? bus = null,
    Object? busRoute = null,
    Object? departureTime = null,
    Object? ticketPrice = null,
    Object? discount = null,
    Object? processingFee = null,
  }) {
    return _then(_value.copyWith(
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      bus: null == bus
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as Bus,
      busRoute: null == busRoute
          ? _value.busRoute
          : busRoute // ignore: cast_nullable_to_non_nullable
              as BusRoute,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      ticketPrice: null == ticketPrice
          ? _value.ticketPrice
          : ticketPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      processingFee: null == processingFee
          ? _value.processingFee
          : processingFee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusCopyWith<$Res> get bus {
    return $BusCopyWith<$Res>(_value.bus, (value) {
      return _then(_value.copyWith(bus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusScheduleCopyWith<$Res>
    implements $BusScheduleCopyWith<$Res> {
  factory _$$BusScheduleCopyWith(
          _$BusSchedule value, $Res Function(_$BusSchedule) then) =
      __$$BusScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? scheduleId,
      Bus bus,
      BusRoute busRoute,
      String departureTime,
      int ticketPrice,
      int discount,
      int processingFee});

  @override
  $BusCopyWith<$Res> get bus;
}

/// @nodoc
class __$$BusScheduleCopyWithImpl<$Res>
    extends _$BusScheduleCopyWithImpl<$Res, _$BusSchedule>
    implements _$$BusScheduleCopyWith<$Res> {
  __$$BusScheduleCopyWithImpl(
      _$BusSchedule _value, $Res Function(_$BusSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? bus = null,
    Object? busRoute = null,
    Object? departureTime = null,
    Object? ticketPrice = null,
    Object? discount = null,
    Object? processingFee = null,
  }) {
    return _then(_$BusSchedule(
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      bus: null == bus
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as Bus,
      busRoute: null == busRoute
          ? _value.busRoute
          : busRoute // ignore: cast_nullable_to_non_nullable
              as BusRoute,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      ticketPrice: null == ticketPrice
          ? _value.ticketPrice
          : ticketPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      processingFee: null == processingFee
          ? _value.processingFee
          : processingFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusSchedule implements BusSchedule {
  _$BusSchedule(
      {this.scheduleId,
      required this.bus,
      required this.busRoute,
      required this.departureTime,
      required this.ticketPrice,
      this.discount = 0,
      this.processingFee = 100});

  factory _$BusSchedule.fromJson(Map<String, dynamic> json) =>
      _$$BusScheduleFromJson(json);

  @override
  int? scheduleId;
  @override
  Bus bus;
  @override
  BusRoute busRoute;
  @override
  String departureTime;
  @override
  int ticketPrice;
  @override
  @JsonKey()
  int discount;
  @override
  @JsonKey()
  int processingFee;

  @override
  String toString() {
    return 'BusSchedule(scheduleId: $scheduleId, bus: $bus, busRoute: $busRoute, departureTime: $departureTime, ticketPrice: $ticketPrice, discount: $discount, processingFee: $processingFee)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusScheduleCopyWith<_$BusSchedule> get copyWith =>
      __$$BusScheduleCopyWithImpl<_$BusSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusScheduleToJson(
      this,
    );
  }
}

abstract class BusSchedule implements BusSchedule {
  factory BusSchedule(
      {int? scheduleId,
      required Bus bus,
      required BusRoute busRoute,
      required String departureTime,
      required int ticketPrice,
      int discount,
      int processingFee}) = _$BusSchedule;

  factory BusSchedule.fromJson(Map<String, dynamic> json) =
      _$BusSchedule.fromJson;

  @override
  int? get scheduleId;
  set scheduleId(int? value);
  @override
  Bus get bus;
  set bus(Bus value);
  @override
  BusRoute get busRoute;
  set busRoute(BusRoute value);
  @override
  String get departureTime;
  set departureTime(String value);
  @override
  int get ticketPrice;
  set ticketPrice(int value);
  @override
  int get discount;
  set discount(int value);
  @override
  int get processingFee;
  set processingFee(int value);
  @override
  @JsonKey(ignore: true)
  _$$BusScheduleCopyWith<_$BusSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
