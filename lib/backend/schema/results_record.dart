import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsRecord extends FirestoreRecord {
  ResultsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "score" field.
  double? _score;
  double get score => _score ?? 0.0;
  bool hasScore() => _score != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _score = castToType<double>(snapshotData['score']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('results')
          : FirebaseFirestore.instance.collectionGroup('results');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('results').doc(id);

  static Stream<ResultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultsRecord.fromSnapshot(s));

  static Future<ResultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultsRecord.fromSnapshot(s));

  static ResultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultsRecordData({
  DocumentReference? user,
  double? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'score': score,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultsRecordDocumentEquality implements Equality<ResultsRecord> {
  const ResultsRecordDocumentEquality();

  @override
  bool equals(ResultsRecord? e1, ResultsRecord? e2) {
    return e1?.user == e2?.user && e1?.score == e2?.score;
  }

  @override
  int hash(ResultsRecord? e) => const ListEquality().hash([e?.user, e?.score]);

  @override
  bool isValidKey(Object? o) => o is ResultsRecord;
}
