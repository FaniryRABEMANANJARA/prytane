import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembresGroupeRecord extends FirestoreRecord {
  MembresGroupeRecord._(
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
      FirebaseFirestore.instance.collection('membresGroupe');

  static Stream<MembresGroupeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembresGroupeRecord.fromSnapshot(s));

  static Future<MembresGroupeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembresGroupeRecord.fromSnapshot(s));

  static MembresGroupeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembresGroupeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembresGroupeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembresGroupeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembresGroupeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembresGroupeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembresGroupeRecordData({
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

class MembresGroupeRecordDocumentEquality
    implements Equality<MembresGroupeRecord> {
  const MembresGroupeRecordDocumentEquality();

  @override
  bool equals(MembresGroupeRecord? e1, MembresGroupeRecord? e2) {
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
  int hash(MembresGroupeRecord? e) => const ListEquality().hash([
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
  bool isValidKey(Object? o) => o is MembresGroupeRecord;
}
