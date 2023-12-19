// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingQuestionsStruct extends FFFirebaseStruct {
  OnboardingQuestionsStruct({
    String? question,
    String? answer,
    OnboardingQuestionInputStruct? input,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _answer = answer,
        _input = input,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;
  bool hasAnswer() => _answer != null;

  // "input" field.
  OnboardingQuestionInputStruct? _input;
  OnboardingQuestionInputStruct get input =>
      _input ?? OnboardingQuestionInputStruct();
  set input(OnboardingQuestionInputStruct? val) => _input = val;
  void updateInput(Function(OnboardingQuestionInputStruct) updateFn) =>
      updateFn(_input ??= OnboardingQuestionInputStruct());
  bool hasInput() => _input != null;

  static OnboardingQuestionsStruct fromMap(Map<String, dynamic> data) =>
      OnboardingQuestionsStruct(
        question: data['question'] as String?,
        answer: data['answer'] as String?,
        input: OnboardingQuestionInputStruct.maybeFromMap(data['input']),
      );

  static OnboardingQuestionsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? OnboardingQuestionsStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'answer': _answer,
        'input': _input?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'input': serializeParam(
          _input,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OnboardingQuestionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OnboardingQuestionsStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
        input: deserializeStructParam(
          data['input'],
          ParamType.DataStruct,
          false,
          structBuilder: OnboardingQuestionInputStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OnboardingQuestionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnboardingQuestionsStruct &&
        question == other.question &&
        answer == other.answer &&
        input == other.input;
  }

  @override
  int get hashCode => const ListEquality().hash([question, answer, input]);
}

OnboardingQuestionsStruct createOnboardingQuestionsStruct({
  String? question,
  String? answer,
  OnboardingQuestionInputStruct? input,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnboardingQuestionsStruct(
      question: question,
      answer: answer,
      input:
          input ?? (clearUnsetFields ? OnboardingQuestionInputStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OnboardingQuestionsStruct? updateOnboardingQuestionsStruct(
  OnboardingQuestionsStruct? onboardingQuestions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onboardingQuestions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnboardingQuestionsStructData(
  Map<String, dynamic> firestoreData,
  OnboardingQuestionsStruct? onboardingQuestions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onboardingQuestions == null) {
    return;
  }
  if (onboardingQuestions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && onboardingQuestions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onboardingQuestionsData =
      getOnboardingQuestionsFirestoreData(onboardingQuestions, forFieldValue);
  final nestedData =
      onboardingQuestionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      onboardingQuestions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnboardingQuestionsFirestoreData(
  OnboardingQuestionsStruct? onboardingQuestions, [
  bool forFieldValue = false,
]) {
  if (onboardingQuestions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onboardingQuestions.toMap());

  // Handle nested data for "input" field.
  addOnboardingQuestionInputStructData(
    firestoreData,
    onboardingQuestions.hasInput() ? onboardingQuestions.input : null,
    'input',
    forFieldValue,
  );

  // Add any Firestore field values
  onboardingQuestions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnboardingQuestionsListFirestoreData(
  List<OnboardingQuestionsStruct>? onboardingQuestionss,
) =>
    onboardingQuestionss
        ?.map((e) => getOnboardingQuestionsFirestoreData(e, true))
        .toList() ??
    [];
