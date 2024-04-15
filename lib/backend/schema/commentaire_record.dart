import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentaireRecord extends FirestoreRecord {
  CommentaireRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _post = snapshotData['post'] as DocumentReference?;
    _content = snapshotData['content'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commentaire');

  static Stream<CommentaireRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentaireRecord.fromSnapshot(s));

  static Future<CommentaireRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentaireRecord.fromSnapshot(s));

  static CommentaireRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentaireRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentaireRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentaireRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentaireRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentaireRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentaireRecordData({
  DocumentReference? user,
  DocumentReference? post,
  String? content,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'post': post,
      'content': content,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentaireRecordDocumentEquality implements Equality<CommentaireRecord> {
  const CommentaireRecordDocumentEquality();

  @override
  bool equals(CommentaireRecord? e1, CommentaireRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.post == e2?.post &&
        e1?.content == e2?.content &&
        e1?.date == e2?.date;
  }

  @override
  int hash(CommentaireRecord? e) =>
      const ListEquality().hash([e?.user, e?.post, e?.content, e?.date]);

  @override
  bool isValidKey(Object? o) => o is CommentaireRecord;
}
