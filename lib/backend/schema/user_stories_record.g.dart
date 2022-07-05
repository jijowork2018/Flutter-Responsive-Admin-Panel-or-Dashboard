// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserStoriesRecord> _$userStoriesRecordSerializer =
    new _$UserStoriesRecordSerializer();

class _$UserStoriesRecordSerializer
    implements StructuredSerializer<UserStoriesRecord> {
  @override
  final Iterable<Type> types = const [UserStoriesRecord, _$UserStoriesRecord];
  @override
  final String wireName = 'UserStoriesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserStoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
      'storyVideo',
      serializers.serialize(object.storyVideo,
          specifiedType: const FullType(String)),
      'storyPhoto',
      serializers.serialize(object.storyPhoto,
          specifiedType: const FullType(String)),
      'storyDescription',
      serializers.serialize(object.storyDescription,
          specifiedType: const FullType(String)),
      'storyPostedAt',
      serializers.serialize(object.storyPostedAt,
          specifiedType: const FullType(DateTime)),
      'likes',
      serializers.serialize(object.likes,
          specifiedType: const FullType(BuiltList, const [
            const FullType(DocumentReference, const [const FullType(Object)])
          ])),
      'numComments',
      serializers.serialize(object.numComments,
          specifiedType: const FullType(int)),
      'isOwner',
      serializers.serialize(object.isOwner,
          specifiedType: const FullType(bool)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType(Object)])),
    ];

    return result;
  }

  @override
  UserStoriesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserStoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'storyVideo':
          result.storyVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storyPhoto':
          result.storyPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storyDescription':
          result.storyDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storyPostedAt':
          result.storyPostedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'numComments':
          result.numComments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isOwner':
          result.isOwner = serializers.deserialize(value,
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

class _$UserStoriesRecord extends UserStoriesRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final String storyVideo;
  @override
  final String storyPhoto;
  @override
  final String storyDescription;
  @override
  final DateTime storyPostedAt;
  @override
  final BuiltList<DocumentReference<Object>> likes;
  @override
  final int numComments;
  @override
  final bool isOwner;
  @override
  final DocumentReference<Object> reference;

  factory _$UserStoriesRecord(
          [void Function(UserStoriesRecordBuilder) updates]) =>
      (new UserStoriesRecordBuilder()..update(updates)).build();

  _$UserStoriesRecord._(
      {this.user,
      this.storyVideo,
      this.storyPhoto,
      this.storyDescription,
      this.storyPostedAt,
      this.likes,
      this.numComments,
      this.isOwner,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(user, 'UserStoriesRecord', 'user');
    BuiltValueNullFieldError.checkNotNull(
        storyVideo, 'UserStoriesRecord', 'storyVideo');
    BuiltValueNullFieldError.checkNotNull(
        storyPhoto, 'UserStoriesRecord', 'storyPhoto');
    BuiltValueNullFieldError.checkNotNull(
        storyDescription, 'UserStoriesRecord', 'storyDescription');
    BuiltValueNullFieldError.checkNotNull(
        storyPostedAt, 'UserStoriesRecord', 'storyPostedAt');
    BuiltValueNullFieldError.checkNotNull(likes, 'UserStoriesRecord', 'likes');
    BuiltValueNullFieldError.checkNotNull(
        numComments, 'UserStoriesRecord', 'numComments');
    BuiltValueNullFieldError.checkNotNull(
        isOwner, 'UserStoriesRecord', 'isOwner');
    BuiltValueNullFieldError.checkNotNull(
        reference, 'UserStoriesRecord', 'reference');
  }

  @override
  UserStoriesRecord rebuild(void Function(UserStoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStoriesRecordBuilder toBuilder() =>
      new UserStoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStoriesRecord &&
        user == other.user &&
        storyVideo == other.storyVideo &&
        storyPhoto == other.storyPhoto &&
        storyDescription == other.storyDescription &&
        storyPostedAt == other.storyPostedAt &&
        likes == other.likes &&
        numComments == other.numComments &&
        isOwner == other.isOwner &&
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
                            $jc($jc($jc(0, user.hashCode), storyVideo.hashCode),
                                storyPhoto.hashCode),
                            storyDescription.hashCode),
                        storyPostedAt.hashCode),
                    likes.hashCode),
                numComments.hashCode),
            isOwner.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserStoriesRecord')
          ..add('user', user)
          ..add('storyVideo', storyVideo)
          ..add('storyPhoto', storyPhoto)
          ..add('storyDescription', storyDescription)
          ..add('storyPostedAt', storyPostedAt)
          ..add('likes', likes)
          ..add('numComments', numComments)
          ..add('isOwner', isOwner)
          ..add('reference', reference))
        .toString();
  }
}

class UserStoriesRecordBuilder
    implements Builder<UserStoriesRecord, UserStoriesRecordBuilder> {
  _$UserStoriesRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _storyVideo;
  String get storyVideo => _$this._storyVideo;
  set storyVideo(String storyVideo) => _$this._storyVideo = storyVideo;

  String _storyPhoto;
  String get storyPhoto => _$this._storyPhoto;
  set storyPhoto(String storyPhoto) => _$this._storyPhoto = storyPhoto;

  String _storyDescription;
  String get storyDescription => _$this._storyDescription;
  set storyDescription(String storyDescription) =>
      _$this._storyDescription = storyDescription;

  DateTime _storyPostedAt;
  DateTime get storyPostedAt => _$this._storyPostedAt;
  set storyPostedAt(DateTime storyPostedAt) =>
      _$this._storyPostedAt = storyPostedAt;

  ListBuilder<DocumentReference<Object>> _likes;
  ListBuilder<DocumentReference<Object>> get likes =>
      _$this._likes ??= new ListBuilder<DocumentReference<Object>>();
  set likes(ListBuilder<DocumentReference<Object>> likes) =>
      _$this._likes = likes;

  int _numComments;
  int get numComments => _$this._numComments;
  set numComments(int numComments) => _$this._numComments = numComments;

  bool _isOwner;
  bool get isOwner => _$this._isOwner;
  set isOwner(bool isOwner) => _$this._isOwner = isOwner;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserStoriesRecordBuilder() {
    UserStoriesRecord._initializeBuilder(this);
  }

  UserStoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _storyVideo = $v.storyVideo;
      _storyPhoto = $v.storyPhoto;
      _storyDescription = $v.storyDescription;
      _storyPostedAt = $v.storyPostedAt;
      _likes = $v.likes.toBuilder();
      _numComments = $v.numComments;
      _isOwner = $v.isOwner;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserStoriesRecord;
  }

  @override
  void update(void Function(UserStoriesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserStoriesRecord build() {
    _$UserStoriesRecord _$result;
    try {
      _$result = _$v ??
          new _$UserStoriesRecord._(
              user: BuiltValueNullFieldError.checkNotNull(
                  user, 'UserStoriesRecord', 'user'),
              storyVideo: BuiltValueNullFieldError.checkNotNull(
                  storyVideo, 'UserStoriesRecord', 'storyVideo'),
              storyPhoto: BuiltValueNullFieldError.checkNotNull(
                  storyPhoto, 'UserStoriesRecord', 'storyPhoto'),
              storyDescription: BuiltValueNullFieldError.checkNotNull(
                  storyDescription, 'UserStoriesRecord', 'storyDescription'),
              storyPostedAt: BuiltValueNullFieldError.checkNotNull(
                  storyPostedAt, 'UserStoriesRecord', 'storyPostedAt'),
              likes: likes.build(),
              numComments: BuiltValueNullFieldError.checkNotNull(
                  numComments, 'UserStoriesRecord', 'numComments'),
              isOwner: BuiltValueNullFieldError.checkNotNull(
                  isOwner, 'UserStoriesRecord', 'isOwner'),
              reference: BuiltValueNullFieldError.checkNotNull(
                  reference, 'UserStoriesRecord', 'reference'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'likes';
        likes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserStoriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
