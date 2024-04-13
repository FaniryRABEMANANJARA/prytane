import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvenementsRecord extends FirestoreRecord {
  EvenementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "organizers" field.
  List<DocumentReference>? _organizers;
  List<DocumentReference> get organizers => _organizers ?? const [];
  bool hasOrganizers() => _organizers != null;

  // "participants" field.
  List<DocumentReference>? _participants;
  List<DocumentReference> get participants => _participants ?? const [];
  bool hasParticipants() => _participants != null;

  // "date_debut" field.
  String? _dateDebut;
  String get dateDebut => _dateDebut ?? '';
  bool hasDateDebut() => _dateDebut != null;

  // "date_fin" field.
  String? _dateFin;
  String get dateFin => _dateFin ?? '';
  bool hasDateFin() => _dateFin != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _organizers = getDataList(snapshotData['organizers']);
    _participants = getDataList(snapshotData['participants']);
    _dateDebut = snapshotData['date_debut'] as String?;
    _dateFin = snapshotData['date_fin'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('evenements');

  static Stream<EvenementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvenementsRecord.fromSnapshot(s));

  static Future<EvenementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvenementsRecord.fromSnapshot(s));

  static EvenementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvenementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvenementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvenementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvenementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvenementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvenementsRecordData({
  String? title,
  String? description,
  String? location,
  String? dateDebut,
  String? dateFin,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'location': location,
      'date_debut': dateDebut,
      'date_fin': dateFin,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvenementsRecordDocumentEquality implements Equality<EvenementsRecord> {
  const EvenementsRecordDocumentEquality();

  @override
  bool equals(EvenementsRecord? e1, EvenementsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.organizers, e2?.organizers) &&
        listEquality.equals(e1?.participants, e2?.participants) &&
        e1?.dateDebut == e2?.dateDebut &&
        e1?.dateFin == e2?.dateFin &&
        e1?.image == e2?.image;
  }

  @override
  int hash(EvenementsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.location,
        e?.organizers,
        e?.participants,
        e?.dateDebut,
        e?.dateFin,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is EvenementsRecord;
}
