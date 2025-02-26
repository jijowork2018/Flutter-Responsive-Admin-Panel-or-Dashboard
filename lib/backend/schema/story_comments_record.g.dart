// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoryCommentsRecord> _$storyCommentsRecordSerializer =
    new _$StoryCommentsRecordSerializer();

class _$StoryCommentsRecordSerializer
    implements StructuredSerializer<StoryCommentsRecord> {
  @override
  final Iterable<Type> types = const [
    StoryCommentsRecord,
    _$StoryCommentsRecord
  ];
  @override
  final String wireName = 'StoryCommentsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, StoryCommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'storyAssociation',
      serializers.serialize(object.storyAssociation,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'commentUser',
      serializers.serialize(object.commentUser,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
      'timePosted',
      serializers.serialize(object.timePosted,
          specifiedType: const FullType(DateTime)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  StoryCommentsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoryCommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'storyAssociation':
          result.storyAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'commentUser':
          result.commentUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timePosted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$StoryCommentsRecord extends StoryCommentsRecord {
  @override
  final DocumentReference<Object> storyAssociation;
  @override
  final DocumentReference<Object> commentUser;
  @override
  final String comment;
  @override
  final DateTime timePosted;
  @override
  final DocumentReference<Object> reference;

  factory _$StoryCommentsRecord(
          [void Function(StoryCommentsRecordBuilder) updates]) =>
      (new StoryCommentsRecordBuilder()..update(updates)).build();

  _$StoryCommentsRecord._(
      {this.storyAssociation,
      this.commentUser,
      this.comment,
      this.timePosted,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        storyAssociation, 'StoryCommentsRecord', 'storyAssociation');
    BuiltValueNullFieldError.checkNotNull(
        commentUser, 'StoryCommentsRecord', 'commentUser');
    BuiltValueNullFieldError.checkNotNull(
        comment, 'StoryCommentsRecord', 'comment');
    BuiltValueNullFieldError.checkNotNull(
        timePosted, 'StoryCommentsRecord', 'timePosted');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'StoryCommentsRecord', 'reference');
  }

  @override
  StoryCommentsRecord rebuild(
          void Function(StoryCommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoryCommentsRecordBuilder toBuilder() =>
      new StoryCommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoryCommentsRecord &&
        storyAssociation == other.storyAssociation &&
        commentUser == other.commentUser &&
        comment == other.comment &&
        timePosted == other.timePosted &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, storyAssociation.hashCode), commentUser.hashCode),
                comment.hashCode),
            timePosted.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoryCommentsRecord')
          ..add('storyAssociation', storyAssociation)
          ..add('commentUser', commentUser)
          ..add('comment', comment)
          ..add('timePosted', timePosted)
          ..add('reference', reference))
        .toString();
  }
}

class StoryCommentsRecordBuilder
    implements Builder<StoryCommentsRecord, StoryCommentsRecordBuilder> {
  _$StoryCommentsRecord _$v;

  DocumentReference<Object> _storyAssociation;
  DocumentReference<Object> get storyAssociation => _$this._storyAssociation;
  set storyAssociation(DocumentReference<Object> storyAssociation) =>
      _$this._storyAssociation = storyAssociation;

  DocumentReference<Object> _commentUser;
  DocumentReference<Object> get commentUser => _$this._commentUser;
  set commentUser(DocumentReference<Object> commentUser) =>
      _$this._commentUser = commentUser;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  DateTime _timePosted;
  DateTime get timePosted => _$this._timePosted;
  set timePosted(DateTime timePosted) => _$this._timePosted = timePosted;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  StoryCommentsRecordBuilder() {
    StoryCommentsRecord._initializeBuilder(this);
  }

  StoryCommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storyAssociation = $v.storyAssociation;
      _commentUser = $v.commentUser;
      _comment = $v.comment;
      _timePosted = $v.timePosted;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoryCommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoryCommentsRecord;
  }

  @override
  void update(void Function(StoryCommentsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoryCommentsRecord build() {
    final _$result = _$v ??
        new _$StoryCommentsRecord._(
            storyAssociation: BuiltValueNullFieldError.checkNotNull(
                storyAssociation, 'StoryCommentsRecord', 'storyAssociation'),
            commentUser: BuiltValueNullFieldError.checkNotNull(
                commentUser, 'StoryCommentsRecord', 'commentUser'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, 'StoryCommentsRecord', 'comment'),
            timePosted: BuiltValueNullFieldError.checkNotNull(
                timePosted, 'StoryCommentsRecord', 'timePosted'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'StoryCommentsRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
