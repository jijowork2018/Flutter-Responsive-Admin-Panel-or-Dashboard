// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostCommentsRecord> _$postCommentsRecordSerializer =
    new _$PostCommentsRecordSerializer();

class _$PostCommentsRecordSerializer
    implements StructuredSerializer<PostCommentsRecord> {
  @override
  final Iterable<Type> types = const [PostCommentsRecord, _$PostCommentsRecord];
  @override
  final String wireName = 'PostCommentsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PostCommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'timePosted',
      serializers.serialize(object.timePosted,
          specifiedType: const FullType(DateTime)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'post',
      serializers.serialize(object.post,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  PostCommentsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostCommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'timePosted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'post':
          result.post = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$PostCommentsRecord extends PostCommentsRecord {
  @override
  final DateTime timePosted;
  @override
  final String comment;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> post;
  @override
  final DocumentReference<Object> reference;

  factory _$PostCommentsRecord(
          [void Function(PostCommentsRecordBuilder) updates]) =>
      (new PostCommentsRecordBuilder()..update(updates)).build();

  _$PostCommentsRecord._(
      {this.timePosted, this.comment, this.user, this.post, this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timePosted, 'PostCommentsRecord', 'timePosted');
    BuiltValueNullFieldError.checkNotNull(
        comment, 'PostCommentsRecord', 'comment');
    BuiltValueNullFieldError.checkNotNull(user, 'PostCommentsRecord', 'user');
    BuiltValueNullFieldError.checkNotNull(post, 'PostCommentsRecord', 'post');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'PostCommentsRecord', 'reference');
  }

  @override
  PostCommentsRecord rebuild(
          void Function(PostCommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostCommentsRecordBuilder toBuilder() =>
      new PostCommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostCommentsRecord &&
        timePosted == other.timePosted &&
        comment == other.comment &&
        user == other.user &&
        post == other.post &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, timePosted.hashCode), comment.hashCode),
                user.hashCode),
            post.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostCommentsRecord')
          ..add('timePosted', timePosted)
          ..add('comment', comment)
          ..add('user', user)
          ..add('post', post)
          ..add('reference', reference))
        .toString();
  }
}

class PostCommentsRecordBuilder
    implements Builder<PostCommentsRecord, PostCommentsRecordBuilder> {
  _$PostCommentsRecord _$v;

  DateTime _timePosted;
  DateTime get timePosted => _$this._timePosted;
  set timePosted(DateTime timePosted) => _$this._timePosted = timePosted;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _post;
  DocumentReference<Object> get post => _$this._post;
  set post(DocumentReference<Object> post) => _$this._post = post;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PostCommentsRecordBuilder() {
    PostCommentsRecord._initializeBuilder(this);
  }

  PostCommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timePosted = $v.timePosted;
      _comment = $v.comment;
      _user = $v.user;
      _post = $v.post;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostCommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostCommentsRecord;
  }

  @override
  void update(void Function(PostCommentsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostCommentsRecord build() {
    final _$result = _$v ??
        new _$PostCommentsRecord._(
            timePosted: BuiltValueNullFieldError.checkNotNull(
                timePosted, 'PostCommentsRecord', 'timePosted'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, 'PostCommentsRecord', 'comment'),
            user: BuiltValueNullFieldError.checkNotNull(
                user, 'PostCommentsRecord', 'user'),
            post: BuiltValueNullFieldError.checkNotNull(
                post, 'PostCommentsRecord', 'post'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'PostCommentsRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
