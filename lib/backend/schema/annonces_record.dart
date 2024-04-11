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

  // "contenu" field.
  String? _contenu;
  String get contenu => _contenu ?? '';
  bool hasContenu() => _contenu != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "comments" field.
  List<String>? _comments;
  List<String> get comments => _comments ?? const [];
  bool hasComments() => _comments != null;

  void _initializeFields() {
    _contenu = snapshotData['contenu'] as String?;
    _type = snapshotData['type'] as String?;
    _userId = snapshotData['userId'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _likes = castToType<int>(snapshotData['likes']);
    _comments = getDataList(snapshotData['comments']);
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
  String? contenu,
  String? type,
  String? userId,
  DateTime? createdAt,
  int? likes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contenu': contenu,
      'type': type,
      'userId': userId,
      'createdAt': createdAt,
      'likes': likes,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnoncesRecordDocumentEquality implements Equality<AnnoncesRecord> {
  const AnnoncesRecordDocumentEquality();

  @override
  bool equals(AnnoncesRecord? e1, AnnoncesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.contenu == e2?.contenu &&
        e1?.type == e2?.type &&
        e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.comments, e2?.comments);
  }

  @override
  int hash(AnnoncesRecord? e) => const ListEquality().hash(
      [e?.contenu, e?.type, e?.userId, e?.createdAt, e?.likes, e?.comments]);

  @override
  bool isValidKey(Object? o) => o is AnnoncesRecord;
}
