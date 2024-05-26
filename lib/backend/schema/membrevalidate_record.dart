import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembrevalidateRecord extends FirestoreRecord {
  MembrevalidateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "idUser" field.
  DocumentReference? _idUser;
  DocumentReference? get idUser => _idUser;
  bool hasIdUser() => _idUser != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "idGroup" field.
  DocumentReference? _idGroup;
  DocumentReference? get idGroup => _idGroup;
  bool hasIdGroup() => _idGroup != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  bool hasSexe() => _sexe != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _fullname = snapshotData['fullname'] as String?;
    _idUser = snapshotData['idUser'] as DocumentReference?;
    _age = snapshotData['age'] as String?;
    _description = snapshotData['description'] as String?;
    _idGroup = snapshotData['idGroup'] as DocumentReference?;
    _sexe = snapshotData['sexe'] as String?;
    _image = snapshotData['image'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('membrevalidate');

  static Stream<MembrevalidateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembrevalidateRecord.fromSnapshot(s));

  static Future<MembrevalidateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembrevalidateRecord.fromSnapshot(s));

  static MembrevalidateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembrevalidateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembrevalidateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembrevalidateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembrevalidateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembrevalidateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembrevalidateRecordData({
  String? fullname,
  DocumentReference? idUser,
  String? age,
  String? description,
  DocumentReference? idGroup,
  String? sexe,
  String? image,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fullname': fullname,
      'idUser': idUser,
      'age': age,
      'description': description,
      'idGroup': idGroup,
      'sexe': sexe,
      'image': image,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembrevalidateRecordDocumentEquality
    implements Equality<MembrevalidateRecord> {
  const MembrevalidateRecordDocumentEquality();

  @override
  bool equals(MembrevalidateRecord? e1, MembrevalidateRecord? e2) {
    return e1?.fullname == e2?.fullname &&
        e1?.idUser == e2?.idUser &&
        e1?.age == e2?.age &&
        e1?.description == e2?.description &&
        e1?.idGroup == e2?.idGroup &&
        e1?.sexe == e2?.sexe &&
        e1?.image == e2?.image &&
        e1?.type == e2?.type;
  }

  @override
  int hash(MembrevalidateRecord? e) => const ListEquality().hash([
        e?.fullname,
        e?.idUser,
        e?.age,
        e?.description,
        e?.idGroup,
        e?.sexe,
        e?.image,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is MembrevalidateRecord;
}
