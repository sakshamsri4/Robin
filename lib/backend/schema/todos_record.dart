import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'todos_record.g.dart';

abstract class TodosRecord implements Built<TodosRecord, TodosRecordBuilder> {
  static Serializer<TodosRecord> get serializer => _$todosRecordSerializer;

  String? get title;

  String? get description;

  DateTime? get timestamp;

  @BuiltValueField(wireName: 'is_done')
  bool? get isDone;

  String? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TodosRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..isDone = false
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todos');

  static Stream<TodosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TodosRecord._();
  factory TodosRecord([void Function(TodosRecordBuilder) updates]) =
      _$TodosRecord;

  static TodosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTodosRecordData({
  String? title,
  String? description,
  DateTime? timestamp,
  bool? isDone,
  String? uid,
}) {
  final firestoreData = serializers.toFirestore(
    TodosRecord.serializer,
    TodosRecord(
      (t) => t
        ..title = title
        ..description = description
        ..timestamp = timestamp
        ..isDone = isDone
        ..uid = uid,
    ),
  );

  return firestoreData;
}
