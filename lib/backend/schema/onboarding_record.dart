import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingRecord extends FirestoreRecord {
  OnboardingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "data" field.
  OnboardingQuestionsStruct? _data;
  OnboardingQuestionsStruct get data => _data ?? OnboardingQuestionsStruct();
  bool hasData() => _data != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _data = OnboardingQuestionsStruct.maybeFromMap(snapshotData['data']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Onboarding');

  static Stream<OnboardingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OnboardingRecord.fromSnapshot(s));

  static Future<OnboardingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OnboardingRecord.fromSnapshot(s));

  static OnboardingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OnboardingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OnboardingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OnboardingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OnboardingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OnboardingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOnboardingRecordData({
  DocumentReference? user,
  OnboardingQuestionsStruct? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'data': OnboardingQuestionsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "data" field.
  addOnboardingQuestionsStructData(firestoreData, data, 'data');

  return firestoreData;
}

class OnboardingRecordDocumentEquality implements Equality<OnboardingRecord> {
  const OnboardingRecordDocumentEquality();

  @override
  bool equals(OnboardingRecord? e1, OnboardingRecord? e2) {
    return e1?.user == e2?.user && e1?.data == e2?.data;
  }

  @override
  int hash(OnboardingRecord? e) =>
      const ListEquality().hash([e?.user, e?.data]);

  @override
  bool isValidKey(Object? o) => o is OnboardingRecord;
}
