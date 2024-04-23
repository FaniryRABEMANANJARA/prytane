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

  // "postImage" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "postUser" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "postText" field.
  String? _postText;
  String get postText => _postText ?? '';
  bool hasPostText() => _postText != null;

  // "postUsername" field.
  String? _postUsername;
  String get postUsername => _postUsername ?? '';
  bool hasPostUsername() => _postUsername != null;

  // "postUserimage" field.
  String? _postUserimage;
  String get postUserimage => _postUserimage ?? '';
  bool hasPostUserimage() => _postUserimage != null;

  // "usersLikes" field.
  List<DocumentReference>? _usersLikes;
  List<DocumentReference> get usersLikes => _usersLikes ?? const [];
  bool hasUsersLikes() => _usersLikes != null;

  // "userBookmarks" field.
  List<DocumentReference>? _userBookmarks;
  List<DocumentReference> get userBookmarks => _userBookmarks ?? const [];
  bool hasUserBookmarks() => _userBookmarks != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "comments" field.
  int? _comments;
  int get comments => _comments ?? 0;
  bool hasComments() => _comments != null;

  // "dateCreation" field.
  DateTime? _dateCreation;
  DateTime? get dateCreation => _dateCreation;
  bool hasDateCreation() => _dateCreation != null;

  void _initializeFields() {
    _postImage = snapshotData['postImage'] as String?;
    _postUser = snapshotData['postUser'] as DocumentReference?;
    _postText = snapshotData['postText'] as String?;
    _postUsername = snapshotData['postUsername'] as String?;
    _postUserimage = snapshotData['postUserimage'] as String?;
    _usersLikes = getDataList(snapshotData['usersLikes']);
    _userBookmarks = getDataList(snapshotData['userBookmarks']);
    _type = snapshotData['type'] as String?;
    _comments = castToType<int>(snapshotData['comments']);
    _dateCreation = snapshotData['dateCreation'] as DateTime?;
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
  String? postImage,
  DocumentReference? postUser,
  String? postText,
  String? postUsername,
  String? postUserimage,
  String? type,
  int? comments,
  DateTime? dateCreation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postImage': postImage,
      'postUser': postUser,
      'postText': postText,
      'postUsername': postUsername,
      'postUserimage': postUserimage,
      'type': type,
      'comments': comments,
      'dateCreation': dateCreation,
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
    return e1?.postImage == e2?.postImage &&
        e1?.postUser == e2?.postUser &&
        e1?.postText == e2?.postText &&
        e1?.postUsername == e2?.postUsername &&
        e1?.postUserimage == e2?.postUserimage &&
        listEquality.equals(e1?.usersLikes, e2?.usersLikes) &&
        listEquality.equals(e1?.userBookmarks, e2?.userBookmarks) &&
        e1?.type == e2?.type &&
        e1?.comments == e2?.comments &&
        e1?.dateCreation == e2?.dateCreation;
  }

  @override
  int hash(PublicationsRecord? e) => const ListEquality().hash([
        e?.postImage,
        e?.postUser,
        e?.postText,
        e?.postUsername,
        e?.postUserimage,
        e?.usersLikes,
        e?.userBookmarks,
        e?.type,
        e?.comments,
        e?.dateCreation
      ]);

  @override
  bool isValidKey(Object? o) => o is PublicationsRecord;
}
