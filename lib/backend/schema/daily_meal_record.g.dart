// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_meal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyMealRecord> _$dailyMealRecordSerializer =
    new _$DailyMealRecordSerializer();

class _$DailyMealRecordSerializer
    implements StructuredSerializer<DailyMealRecord> {
  @override
  final Iterable<Type> types = const [DailyMealRecord, _$DailyMealRecord];
  @override
  final String wireName = 'DailyMealRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DailyMealRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'dietMeal',
      serializers.serialize(object.dietMeal,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'mealName',
      serializers.serialize(object.mealName,
          specifiedType: const FullType(String)),
      'foodName',
      serializers.serialize(object.foodName,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(double)),
      'calories',
      serializers.serialize(object.calories,
          specifiedType: const FullType(double)),
      'client',
      serializers.serialize(object.client,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'eaten',
      serializers.serialize(object.eaten, specifiedType: const FullType(bool)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  DailyMealRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyMealRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'dietMeal':
          result.dietMeal = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'mealName':
          result.mealName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foodName':
          result.foodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'calories':
          result.calories = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'client':
          result.client = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'eaten':
          result.eaten = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyMealRecord extends DailyMealRecord {
  @override
  final DocumentReference<Object> dietMeal;
  @override
  final String mealName;
  @override
  final String foodName;
  @override
  final double quantity;
  @override
  final double calories;
  @override
  final DocumentReference<Object> client;
  @override
  final DateTime date;
  @override
  final bool eaten;
  @override
  final DocumentReference<Object> reference;

  factory _$DailyMealRecord([void Function(DailyMealRecordBuilder) updates]) =>
      (new DailyMealRecordBuilder()..update(updates)).build();

  _$DailyMealRecord._(
      {this.dietMeal,
      this.mealName,
      this.foodName,
      this.quantity,
      this.calories,
      this.client,
      this.date,
      this.eaten,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dietMeal, 'DailyMealRecord', 'dietMeal');
    BuiltValueNullFieldError.checkNotNull(
        mealName, 'DailyMealRecord', 'mealName');
    BuiltValueNullFieldError.checkNotNull(
        foodName, 'DailyMealRecord', 'foodName');
    BuiltValueNullFieldError.checkNotNull(
        quantity, 'DailyMealRecord', 'quantity');
    BuiltValueNullFieldError.checkNotNull(
        calories, 'DailyMealRecord', 'calories');
    BuiltValueNullFieldError.checkNotNull(client, 'DailyMealRecord', 'client');
    BuiltValueNullFieldError.checkNotNull(date, 'DailyMealRecord', 'date');
    BuiltValueNullFieldError.checkNotNull(eaten, 'DailyMealRecord', 'eaten');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'DailyMealRecord', 'reference');
  }

  @override
  DailyMealRecord rebuild(void Function(DailyMealRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyMealRecordBuilder toBuilder() =>
      new DailyMealRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyMealRecord &&
        dietMeal == other.dietMeal &&
        mealName == other.mealName &&
        foodName == other.foodName &&
        quantity == other.quantity &&
        calories == other.calories &&
        client == other.client &&
        date == other.date &&
        eaten == other.eaten &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, dietMeal.hashCode),
                                    mealName.hashCode),
                                foodName.hashCode),
                            quantity.hashCode),
                        calories.hashCode),
                    client.hashCode),
                date.hashCode),
            eaten.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DailyMealRecord')
          ..add('dietMeal', dietMeal)
          ..add('mealName', mealName)
          ..add('foodName', foodName)
          ..add('quantity', quantity)
          ..add('calories', calories)
          ..add('client', client)
          ..add('date', date)
          ..add('eaten', eaten)
          ..add('reference', reference))
        .toString();
  }
}

class DailyMealRecordBuilder
    implements Builder<DailyMealRecord, DailyMealRecordBuilder> {
  _$DailyMealRecord _$v;

  DocumentReference<Object> _dietMeal;
  DocumentReference<Object> get dietMeal => _$this._dietMeal;
  set dietMeal(DocumentReference<Object> dietMeal) =>
      _$this._dietMeal = dietMeal;

  String _mealName;
  String get mealName => _$this._mealName;
  set mealName(String mealName) => _$this._mealName = mealName;

  String _foodName;
  String get foodName => _$this._foodName;
  set foodName(String foodName) => _$this._foodName = foodName;

  double _quantity;
  double get quantity => _$this._quantity;
  set quantity(double quantity) => _$this._quantity = quantity;

  double _calories;
  double get calories => _$this._calories;
  set calories(double calories) => _$this._calories = calories;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  bool _eaten;
  bool get eaten => _$this._eaten;
  set eaten(bool eaten) => _$this._eaten = eaten;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DailyMealRecordBuilder() {
    DailyMealRecord._initializeBuilder(this);
  }

  DailyMealRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dietMeal = $v.dietMeal;
      _mealName = $v.mealName;
      _foodName = $v.foodName;
      _quantity = $v.quantity;
      _calories = $v.calories;
      _client = $v.client;
      _date = $v.date;
      _eaten = $v.eaten;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyMealRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyMealRecord;
  }

  @override
  void update(void Function(DailyMealRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyMealRecord build() {
    final _$result = _$v ??
        new _$DailyMealRecord._(
            dietMeal: BuiltValueNullFieldError.checkNotNull(
                dietMeal, 'DailyMealRecord', 'dietMeal'),
            mealName: BuiltValueNullFieldError.checkNotNull(
                mealName, 'DailyMealRecord', 'mealName'),
            foodName: BuiltValueNullFieldError.checkNotNull(
                foodName, 'DailyMealRecord', 'foodName'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'DailyMealRecord', 'quantity'),
            calories: BuiltValueNullFieldError.checkNotNull(
                calories, 'DailyMealRecord', 'calories'),
            client: BuiltValueNullFieldError.checkNotNull(
                client, 'DailyMealRecord', 'client'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, 'DailyMealRecord', 'date'),
            eaten: BuiltValueNullFieldError.checkNotNull(
                eaten, 'DailyMealRecord', 'eaten'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'DailyMealRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
