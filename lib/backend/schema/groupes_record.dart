import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupesRecord extends FirestoreRecord {
  GroupesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "membres" field.
  List<DocumentReference>? _membres;
  List<DocumentReference> get membres => _membres ?? const [];
  bool hasMembres() => _membres != null;

  // "administrateurs" field.
  List<DocumentReference>? _administrateurs;
  List<DocumentReference> get administrateurs => _administrateurs ?? const [];
  bool hasAdministrateurs() => _administrateurs != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "permission" field.
  List<String>? _permission;
  List<String> get permission => _permission ?? const [];
  bool hasPermission() => _permission != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _description = snapshotData['description'] as String?;
    _type = snapshotData['type'] as String?;
    _membres = getDataList(snapshotData['membres']);
    _administrateurs = getDataList(snapshotData['administrateurs']);
    _photo = snapshotData['photo'] as String?;
    _permission = getDataList(snapshotData['permission']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groupes');

  static Stream<GroupesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupesRecord.fromSnapshot(s));

  static Future<GroupesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupesRecord.fromSnapshot(s));

  static GroupesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupesRecordData({
  String? nom,
  String? description,
  String? type,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'description': description,
      'type': type,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupesRecordDocumentEquality implements Equality<GroupesRecord> {
  const GroupesRecordDocumentEquality();

  @override
  bool equals(GroupesRecord? e1, GroupesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nom == e2?.nom &&
        e1?.description == e2?.description &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.membres, e2?.membres) &&
        listEquality.equals(e1?.administrateurs, e2?.administrateurs) &&
        e1?.photo == e2?.photo &&
        listEquality.equals(e1?.permission, e2?.permission);
  }

  @override
  int hash(GroupesRecord? e) => const ListEquality().hash([
        e?.nom,
        e?.description,
        e?.type,
        e?.membres,
        e?.administrateurs,
        e?.photo,
        e?.permission
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupesRecord;
}
