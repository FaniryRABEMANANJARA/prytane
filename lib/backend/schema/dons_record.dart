import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonsRecord extends FirestoreRecord {
  DonsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "montant" field.
  double? _montant;
  double get montant => _montant ?? 0.0;
  bool hasMontant() => _montant != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "dateHeure" field.
  DateTime? _dateHeure;
  DateTime? get dateHeure => _dateHeure;
  bool hasDateHeure() => _dateHeure != null;

  void _initializeFields() {
    _montant = castToType<double>(snapshotData['montant']);
    _userId = snapshotData['userId'] as String?;
    _dateHeure = snapshotData['dateHeure'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dons');

  static Stream<DonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonsRecord.fromSnapshot(s));

  static Future<DonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonsRecord.fromSnapshot(s));

  static DonsRecord fromSnapshot(DocumentSnapshot snapshot) => DonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonsRecordData({
  double? montant,
  String? userId,
  DateTime? dateHeure,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'montant': montant,
      'userId': userId,
      'dateHeure': dateHeure,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonsRecordDocumentEquality implements Equality<DonsRecord> {
  const DonsRecordDocumentEquality();

  @override
  bool equals(DonsRecord? e1, DonsRecord? e2) {
    return e1?.montant == e2?.montant &&
        e1?.userId == e2?.userId &&
        e1?.dateHeure == e2?.dateHeure;
  }

  @override
  int hash(DonsRecord? e) =>
      const ListEquality().hash([e?.montant, e?.userId, e?.dateHeure]);

  @override
  bool isValidKey(Object? o) => o is DonsRecord;
}
