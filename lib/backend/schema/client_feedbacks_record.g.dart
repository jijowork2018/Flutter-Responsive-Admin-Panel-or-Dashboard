// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_feedbacks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientFeedbacksRecord> _$clientFeedbacksRecordSerializer =
    new _$ClientFeedbacksRecordSerializer();

class _$ClientFeedbacksRecordSerializer
    implements StructuredSerializer<ClientFeedbacksRecord> {
  @override
  final Iterable<Type> types = const [
    ClientFeedbacksRecord,
    _$ClientFeedbacksRecord
  ];
  @override
  final String wireName = 'ClientFeedbacksRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ClientFeedbacksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'client',
      serializers.serialize(object.client,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'changesMade',
      serializers.serialize(object.changesMade,
          specifiedType: const FullType(String)),
      'calories',
      serializers.serialize(object.calories,
          specifiedType: const FullType(double)),
      'weight',
      serializers.serialize(object.weight,
          specifiedType: const FullType(double)),
      'feedbackDate',
      serializers.serialize(object.feedbackDate,
          specifiedType: const FullType(DateTime)),
      'nextDueDate',
      serializers.serialize(object.nextDueDate,
          specifiedType: const FullType(DateTime)),
      'clientInput',
      serializers.serialize(object.clientInput,
          specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  ClientFeedbacksRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientFeedbacksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'client':
          result.client = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'changesMade':
          result.changesMade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'calories':
          result.calories = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feedbackDate':
          result.feedbackDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'nextDueDate':
          result.nextDueDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'clientInput':
          result.clientInput = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ClientFeedbacksRecord extends ClientFeedbacksRecord {
  @override
  final DocumentReference<Object> client;
  @override
  final String changesMade;
  @override
  final double calories;
  @override
  final double weight;
  @override
  final DateTime feedbackDate;
  @override
  final DateTime nextDueDate;
  @override
  final String clientInput;
  @override
  final DocumentReference<Object> reference;

  factory _$ClientFeedbacksRecord(
          [void Function(ClientFeedbacksRecordBuilder) updates]) =>
      (new ClientFeedbacksRecordBuilder()..update(updates)).build();

  _$ClientFeedbacksRecord._(
      {this.client,
      this.changesMade,
      this.calories,
      this.weight,
      this.feedbackDate,
      this.nextDueDate,
      this.clientInput,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        client, 'ClientFeedbacksRecord', 'client');
    BuiltValueNullFieldError.checkNotNull(
        changesMade, 'ClientFeedbacksRecord', 'changesMade');
    BuiltValueNullFieldError.checkNotNull(
        calories, 'ClientFeedbacksRecord', 'calories');
    BuiltValueNullFieldError.checkNotNull(
        weight, 'ClientFeedbacksRecord', 'weight');
    BuiltValueNullFieldError.checkNotNull(
        feedbackDate, 'ClientFeedbacksRecord', 'feedbackDate');
    BuiltValueNullFieldError.checkNotNull(
        nextDueDate, 'ClientFeedbacksRecord', 'nextDueDate');
    BuiltValueNullFieldError.checkNotNull(
        clientInput, 'ClientFeedbacksRecord', 'clientInput');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'ClientFeedbacksRecord', 'reference');
  }

  @override
  ClientFeedbacksRecord rebuild(
          void Function(ClientFeedbacksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientFeedbacksRecordBuilder toBuilder() =>
      new ClientFeedbacksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientFeedbacksRecord &&
        client == other.client &&
        changesMade == other.changesMade &&
        calories == other.calories &&
        weight == other.weight &&
        feedbackDate == other.feedbackDate &&
        nextDueDate == other.nextDueDate &&
        clientInput == other.clientInput &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, client.hashCode), changesMade.hashCode),
                            calories.hashCode),
                        weight.hashCode),
                    feedbackDate.hashCode),
                nextDueDate.hashCode),
            clientInput.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClientFeedbacksRecord')
          ..add('client', client)
          ..add('changesMade', changesMade)
          ..add('calories', calories)
          ..add('weight', weight)
          ..add('feedbackDate', feedbackDate)
          ..add('nextDueDate', nextDueDate)
          ..add('clientInput', clientInput)
          ..add('reference', reference))
        .toString();
  }
}

class ClientFeedbacksRecordBuilder
    implements Builder<ClientFeedbacksRecord, ClientFeedbacksRecordBuilder> {
  _$ClientFeedbacksRecord _$v;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  String _changesMade;
  String get changesMade => _$this._changesMade;
  set changesMade(String changesMade) => _$this._changesMade = changesMade;

  double _calories;
  double get calories => _$this._calories;
  set calories(double calories) => _$this._calories = calories;

  double _weight;
  double get weight => _$this._weight;
  set weight(double weight) => _$this._weight = weight;

  DateTime _feedbackDate;
  DateTime get feedbackDate => _$this._feedbackDate;
  set feedbackDate(DateTime feedbackDate) =>
      _$this._feedbackDate = feedbackDate;

  DateTime _nextDueDate;
  DateTime get nextDueDate => _$this._nextDueDate;
  set nextDueDate(DateTime nextDueDate) => _$this._nextDueDate = nextDueDate;

  String _clientInput;
  String get clientInput => _$this._clientInput;
  set clientInput(String clientInput) => _$this._clientInput = clientInput;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ClientFeedbacksRecordBuilder() {
    ClientFeedbacksRecord._initializeBuilder(this);
  }

  ClientFeedbacksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _client = $v.client;
      _changesMade = $v.changesMade;
      _calories = $v.calories;
      _weight = $v.weight;
      _feedbackDate = $v.feedbackDate;
      _nextDueDate = $v.nextDueDate;
      _clientInput = $v.clientInput;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientFeedbacksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientFeedbacksRecord;
  }

  @override
  void update(void Function(ClientFeedbacksRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClientFeedbacksRecord build() {
    final _$result = _$v ??
        new _$ClientFeedbacksRecord._(
            client: BuiltValueNullFieldError.checkNotNull(
                client, 'ClientFeedbacksRecord', 'client'),
            changesMade: BuiltValueNullFieldError.checkNotNull(
                changesMade, 'ClientFeedbacksRecord', 'changesMade'),
            calories: BuiltValueNullFieldError.checkNotNull(
                calories, 'ClientFeedbacksRecord', 'calories'),
            weight: BuiltValueNullFieldError.checkNotNull(
                weight, 'ClientFeedbacksRecord', 'weight'),
            feedbackDate: BuiltValueNullFieldError.checkNotNull(
                feedbackDate, 'ClientFeedbacksRecord', 'feedbackDate'),
            nextDueDate: BuiltValueNullFieldError.checkNotNull(
                nextDueDate, 'ClientFeedbacksRecord', 'nextDueDate'),
            clientInput: BuiltValueNullFieldError.checkNotNull(
                clientInput, 'ClientFeedbacksRecord', 'clientInput'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'ClientFeedbacksRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
