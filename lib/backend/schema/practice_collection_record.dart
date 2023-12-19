import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PracticeCollectionRecord extends FirestoreRecord {
  PracticeCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "first" field.
  String? _first;
  String get first => _first ?? '';
  bool hasFirst() => _first != null;

  // "second" field.
  String? _second;
  String get second => _second ?? '';
  bool hasSecond() => _second != null;

  // "third" field.
  String? _third;
  String get third => _third ?? '';
  bool hasThird() => _third != null;

  void _initializeFields() {
    _first = snapshotData['first'] as String?;
    _second = snapshotData['second'] as String?;
    _third = snapshotData['third'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PracticeCollection');

  static Stream<PracticeCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PracticeCollectionRecord.fromSnapshot(s));

  static Future<PracticeCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PracticeCollectionRecord.fromSnapshot(s));

  static PracticeCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PracticeCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PracticeCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PracticeCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PracticeCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PracticeCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPracticeCollectionRecordData({
  String? first,
  String? second,
  String? third,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first': first,
      'second': second,
      'third': third,
    }.withoutNulls,
  );

  return firestoreData;
}

class PracticeCollectionRecordDocumentEquality
    implements Equality<PracticeCollectionRecord> {
  const PracticeCollectionRecordDocumentEquality();

  @override
  bool equals(PracticeCollectionRecord? e1, PracticeCollectionRecord? e2) {
    return e1?.first == e2?.first &&
        e1?.second == e2?.second &&
        e1?.third == e2?.third;
  }

  @override
  int hash(PracticeCollectionRecord? e) =>
      const ListEquality().hash([e?.first, e?.second, e?.third]);

  @override
  bool isValidKey(Object? o) => o is PracticeCollectionRecord;
}
