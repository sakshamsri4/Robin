// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodosRecord> _$todosRecordSerializer = new _$TodosRecordSerializer();

class _$TodosRecordSerializer implements StructuredSerializer<TodosRecord> {
  @override
  final Iterable<Type> types = const [TodosRecord, _$TodosRecord];
  @override
  final String wireName = 'TodosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TodosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isDone;
    if (value != null) {
      result
        ..add('is_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TodosRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'is_done':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TodosRecord extends TodosRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? timestamp;
  @override
  final bool? isDone;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TodosRecord([void Function(TodosRecordBuilder)? updates]) =>
      (new TodosRecordBuilder()..update(updates))._build();

  _$TodosRecord._(
      {this.title,
      this.description,
      this.timestamp,
      this.isDone,
      this.uid,
      this.ffRef})
      : super._();

  @override
  TodosRecord rebuild(void Function(TodosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodosRecordBuilder toBuilder() => new TodosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodosRecord &&
        title == other.title &&
        description == other.description &&
        timestamp == other.timestamp &&
        isDone == other.isDone &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), description.hashCode),
                    timestamp.hashCode),
                isDone.hashCode),
            uid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodosRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('timestamp', timestamp)
          ..add('isDone', isDone)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TodosRecordBuilder implements Builder<TodosRecord, TodosRecordBuilder> {
  _$TodosRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  bool? _isDone;
  bool? get isDone => _$this._isDone;
  set isDone(bool? isDone) => _$this._isDone = isDone;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TodosRecordBuilder() {
    TodosRecord._initializeBuilder(this);
  }

  TodosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _timestamp = $v.timestamp;
      _isDone = $v.isDone;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodosRecord;
  }

  @override
  void update(void Function(TodosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodosRecord build() => _build();

  _$TodosRecord _build() {
    final _$result = _$v ??
        new _$TodosRecord._(
            title: title,
            description: description,
            timestamp: timestamp,
            isDone: isDone,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
