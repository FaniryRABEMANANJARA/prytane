import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeGroupRecord extends FirestoreRecord {
  TypeGroupRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('type_group');

  static Stream<TypeGroupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TypeGroupRecord.fromSnapshot(s));

  static Future<TypeGroupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TypeGroupRecord.fromSnapshot(s));

  static TypeGroupRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TypeGroupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TypeGroupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TypeGroupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TypeGroupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TypeGroupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTypeGroupRecordData({
  String? nom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
    }.withoutNulls,
  );

  return firestoreData;
}

class TypeGroupRecordDocumentEquality implements Equality<TypeGroupRecord> {
  const TypeGroupRecordDocumentEquality();

  @override
  bool equals(TypeGroupRecord? e1, TypeGroupRecord? e2) {
    return e1?.nom == e2?.nom;
  }

  @override
  int hash(TypeGroupRecord? e) => const ListEquality().hash([e?.nom]);

  @override
  bool isValidKey(Object? o) => o is TypeGroupRecord;
}
