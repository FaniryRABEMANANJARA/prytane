import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnoncesRecord extends FirestoreRecord {
  AnnoncesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  bool hasDateCreation() => _dateCreation != null;

  // "localisation" field.
  String? _localisation;
  String get localisation => _localisation ?? '';
  bool hasLocalisation() => _localisation != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  bool hasTitre() => _titre != null;

  // "auteur" field.
  String? _auteur;
  String get auteur => _auteur ?? '';
  bool hasAuteur() => _auteur != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _dateCreation = snapshotData['date_creation'] as String?;
    _localisation = snapshotData['localisation'] as String?;
    _image = snapshotData['image'] as String?;
    _titre = snapshotData['titre'] as String?;
    _auteur = snapshotData['auteur'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('annonces');

  static Stream<AnnoncesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnoncesRecord.fromSnapshot(s));

  static Future<AnnoncesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnoncesRecord.fromSnapshot(s));

  static AnnoncesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnoncesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnoncesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnoncesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnoncesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnoncesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnoncesRecordData({
  String? type,
  String? description,
  String? dateCreation,
  String? localisation,
  String? image,
  String? titre,
  String? auteur,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'description': description,
      'date_creation': dateCreation,
      'localisation': localisation,
      'image': image,
      'titre': titre,
      'auteur': auteur,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnoncesRecordDocumentEquality implements Equality<AnnoncesRecord> {
  const AnnoncesRecordDocumentEquality();

  @override
  bool equals(AnnoncesRecord? e1, AnnoncesRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.dateCreation == e2?.dateCreation &&
        e1?.localisation == e2?.localisation &&
        e1?.image == e2?.image &&
        e1?.titre == e2?.titre &&
        e1?.auteur == e2?.auteur;
  }

  @override
  int hash(AnnoncesRecord? e) => const ListEquality().hash([
        e?.type,
        e?.description,
        e?.dateCreation,
        e?.localisation,
        e?.image,
        e?.titre,
        e?.auteur
      ]);

  @override
  bool isValidKey(Object? o) => o is AnnoncesRecord;
}
