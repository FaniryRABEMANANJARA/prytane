import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SondageRecord extends FirestoreRecord {
  SondageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "opt1list" field.
  List<DocumentReference>? _opt1list;
  List<DocumentReference> get opt1list => _opt1list ?? const [];
  bool hasOpt1list() => _opt1list != null;

  // "opt2list" field.
  List<DocumentReference>? _opt2list;
  List<DocumentReference> get opt2list => _opt2list ?? const [];
  bool hasOpt2list() => _opt2list != null;

  // "voteduser" field.
  List<DocumentReference>? _voteduser;
  List<DocumentReference> get voteduser => _voteduser ?? const [];
  bool hasVoteduser() => _voteduser != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "votecreated" field.
  DateTime? _votecreated;
  DateTime? get votecreated => _votecreated;
  bool hasVotecreated() => _votecreated != null;

  void _initializeFields() {
    _question = snapshotData['question'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _option2 = snapshotData['option2'] as String?;
    _opt1list = getDataList(snapshotData['opt1list']);
    _opt2list = getDataList(snapshotData['opt2list']);
    _voteduser = getDataList(snapshotData['voteduser']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _votecreated = snapshotData['votecreated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sondage');

  static Stream<SondageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SondageRecord.fromSnapshot(s));

  static Future<SondageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SondageRecord.fromSnapshot(s));

  static SondageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SondageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SondageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SondageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SondageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SondageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSondageRecordData({
  String? question,
  String? option1,
  String? option2,
  DocumentReference? owner,
  DateTime? votecreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question': question,
      'option1': option1,
      'option2': option2,
      'owner': owner,
      'votecreated': votecreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class SondageRecordDocumentEquality implements Equality<SondageRecord> {
  const SondageRecordDocumentEquality();

  @override
  bool equals(SondageRecord? e1, SondageRecord? e2) {
    const listEquality = ListEquality();
    return e1?.question == e2?.question &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        listEquality.equals(e1?.opt1list, e2?.opt1list) &&
        listEquality.equals(e1?.opt2list, e2?.opt2list) &&
        listEquality.equals(e1?.voteduser, e2?.voteduser) &&
        e1?.owner == e2?.owner &&
        e1?.votecreated == e2?.votecreated;
  }

  @override
  int hash(SondageRecord? e) => const ListEquality().hash([
        e?.question,
        e?.option1,
        e?.option2,
        e?.opt1list,
        e?.opt2list,
        e?.voteduser,
        e?.owner,
        e?.votecreated
      ]);

  @override
  bool isValidKey(Object? o) => o is SondageRecord;
}
