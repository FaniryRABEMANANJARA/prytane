import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SondagesRecord extends FirestoreRecord {
  SondagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "questions" field.
  List<DocumentReference>? _questions;
  List<DocumentReference> get questions => _questions ?? const [];
  bool hasQuestions() => _questions != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _questions = getDataList(snapshotData['questions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sondages');

  static Stream<SondagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SondagesRecord.fromSnapshot(s));

  static Future<SondagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SondagesRecord.fromSnapshot(s));

  static SondagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SondagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SondagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SondagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SondagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SondagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSondagesRecordData({
  String? name,
  int? duration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'duration': duration,
    }.withoutNulls,
  );

  return firestoreData;
}

class SondagesRecordDocumentEquality implements Equality<SondagesRecord> {
  const SondagesRecordDocumentEquality();

  @override
  bool equals(SondagesRecord? e1, SondagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.duration == e2?.duration &&
        listEquality.equals(e1?.questions, e2?.questions);
  }

  @override
  int hash(SondagesRecord? e) =>
      const ListEquality().hash([e?.name, e?.duration, e?.questions]);

  @override
  bool isValidKey(Object? o) => o is SondagesRecord;
}
