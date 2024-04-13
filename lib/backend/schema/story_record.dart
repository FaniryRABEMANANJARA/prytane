import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoryRecord extends FirestoreRecord {
  StoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "fichier" field.
  String? _fichier;
  String get fichier => _fichier ?? '';
  bool hasFichier() => _fichier != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _fichier = snapshotData['fichier'] as String?;
    _date = snapshotData['date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('story');

  static Stream<StoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoryRecord.fromSnapshot(s));

  static Future<StoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoryRecord.fromSnapshot(s));

  static StoryRecord fromSnapshot(DocumentSnapshot snapshot) => StoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoryRecordData({
  String? userId,
  String? fichier,
  String? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'fichier': fichier,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoryRecordDocumentEquality implements Equality<StoryRecord> {
  const StoryRecordDocumentEquality();

  @override
  bool equals(StoryRecord? e1, StoryRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.fichier == e2?.fichier &&
        e1?.date == e2?.date;
  }

  @override
  int hash(StoryRecord? e) =>
      const ListEquality().hash([e?.userId, e?.fichier, e?.date]);

  @override
  bool isValidKey(Object? o) => o is StoryRecord;
}
