import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PublicationsRecord extends FirestoreRecord {
  PublicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "comments" field.
  List<String>? _comments;
  List<String> get comments => _comments ?? const [];
  bool hasComments() => _comments != null;

  // "fichier" field.
  String? _fichier;
  String get fichier => _fichier ?? '';
  bool hasFichier() => _fichier != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _type = snapshotData['type'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _comments = getDataList(snapshotData['comments']);
    _fichier = snapshotData['fichier'] as String?;
    _role = snapshotData['role'] as String?;
    _userID = snapshotData['userID'] as String?;
    _likedBy = getDataList(snapshotData['liked_by']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('publications');

  static Stream<PublicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PublicationsRecord.fromSnapshot(s));

  static Future<PublicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PublicationsRecord.fromSnapshot(s));

  static PublicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PublicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PublicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PublicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PublicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PublicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPublicationsRecordData({
  String? content,
  String? type,
  DateTime? date,
  String? fichier,
  String? role,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'type': type,
      'date': date,
      'fichier': fichier,
      'role': role,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PublicationsRecordDocumentEquality
    implements Equality<PublicationsRecord> {
  const PublicationsRecordDocumentEquality();

  @override
  bool equals(PublicationsRecord? e1, PublicationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.content == e2?.content &&
        e1?.type == e2?.type &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.comments, e2?.comments) &&
        e1?.fichier == e2?.fichier &&
        e1?.role == e2?.role &&
        e1?.userID == e2?.userID &&
        listEquality.equals(e1?.likedBy, e2?.likedBy);
  }

  @override
  int hash(PublicationsRecord? e) => const ListEquality().hash([
        e?.content,
        e?.type,
        e?.date,
        e?.comments,
        e?.fichier,
        e?.role,
        e?.userID,
        e?.likedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is PublicationsRecord;
}
