import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenUsageCollectionRecord extends FirestoreRecord {
  TokenUsageCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "completionTokens" field.
  int? _completionTokens;
  int get completionTokens => _completionTokens ?? 0;
  bool hasCompletionTokens() => _completionTokens != null;

  // "promptTokens" field.
  int? _promptTokens;
  int get promptTokens => _promptTokens ?? 0;
  bool hasPromptTokens() => _promptTokens != null;

  // "totalTokens" field.
  int? _totalTokens;
  int get totalTokens => _totalTokens ?? 0;
  bool hasTotalTokens() => _totalTokens != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _completionTokens = castToType<int>(snapshotData['completionTokens']);
    _promptTokens = castToType<int>(snapshotData['promptTokens']);
    _totalTokens = castToType<int>(snapshotData['totalTokens']);
    _userId = snapshotData['userId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tokenUsageCollection');

  static Stream<TokenUsageCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => TokenUsageCollectionRecord.fromSnapshot(s));

  static Future<TokenUsageCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TokenUsageCollectionRecord.fromSnapshot(s));

  static TokenUsageCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TokenUsageCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TokenUsageCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TokenUsageCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TokenUsageCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TokenUsageCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTokenUsageCollectionRecordData({
  int? completionTokens,
  int? promptTokens,
  int? totalTokens,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'completionTokens': completionTokens,
      'promptTokens': promptTokens,
      'totalTokens': totalTokens,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TokenUsageCollectionRecordDocumentEquality
    implements Equality<TokenUsageCollectionRecord> {
  const TokenUsageCollectionRecordDocumentEquality();

  @override
  bool equals(TokenUsageCollectionRecord? e1, TokenUsageCollectionRecord? e2) {
    return e1?.completionTokens == e2?.completionTokens &&
        e1?.promptTokens == e2?.promptTokens &&
        e1?.totalTokens == e2?.totalTokens &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(TokenUsageCollectionRecord? e) => const ListEquality()
      .hash([e?.completionTokens, e?.promptTokens, e?.totalTokens, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is TokenUsageCollectionRecord;
}
