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

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

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

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _type = snapshotData['type'] as String?;
    _userId = snapshotData['userId'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _likes = castToType<int>(snapshotData['likes']);
    _comments = getDataList(snapshotData['comments']);
    _fichier = snapshotData['fichier'] as String?;
    _role = snapshotData['role'] as String?;
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
  String? userId,
  DateTime? date,
  int? likes,
  String? fichier,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'type': type,
      'userId': userId,
      'date': date,
      'likes': likes,
      'fichier': fichier,
      'role': role,
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
        e1?.userId == e2?.userId &&
        e1?.date == e2?.date &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.comments, e2?.comments) &&
        e1?.fichier == e2?.fichier &&
        e1?.role == e2?.role;
  }

  @override
  int hash(PublicationsRecord? e) => const ListEquality().hash([
        e?.content,
        e?.type,
        e?.userId,
        e?.date,
        e?.likes,
        e?.comments,
        e?.fichier,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is PublicationsRecord;
}
