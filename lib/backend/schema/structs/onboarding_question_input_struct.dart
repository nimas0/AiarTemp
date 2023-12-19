// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingQuestionInputStruct extends FFFirebaseStruct {
  OnboardingQuestionInputStruct({
    String? type,
    List<String>? options,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _options = options,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;
  void updateOptions(Function(List<String>) updateFn) =>
      updateFn(_options ??= []);
  bool hasOptions() => _options != null;

  static OnboardingQuestionInputStruct fromMap(Map<String, dynamic> data) =>
      OnboardingQuestionInputStruct(
        type: data['type'] as String?,
        options: getDataList(data['options']),
      );

  static OnboardingQuestionInputStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? OnboardingQuestionInputStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'options': _options,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static OnboardingQuestionInputStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OnboardingQuestionInputStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'OnboardingQuestionInputStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OnboardingQuestionInputStruct &&
        type == other.type &&
        listEquality.equals(options, other.options);
  }

  @override
  int get hashCode => const ListEquality().hash([type, options]);
}

OnboardingQuestionInputStruct createOnboardingQuestionInputStruct({
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnboardingQuestionInputStruct(
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OnboardingQuestionInputStruct? updateOnboardingQuestionInputStruct(
  OnboardingQuestionInputStruct? onboardingQuestionInput, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onboardingQuestionInput
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnboardingQuestionInputStructData(
  Map<String, dynamic> firestoreData,
  OnboardingQuestionInputStruct? onboardingQuestionInput,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onboardingQuestionInput == null) {
    return;
  }
  if (onboardingQuestionInput.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      onboardingQuestionInput.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onboardingQuestionInputData = getOnboardingQuestionInputFirestoreData(
      onboardingQuestionInput, forFieldValue);
  final nestedData =
      onboardingQuestionInputData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      onboardingQuestionInput.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnboardingQuestionInputFirestoreData(
  OnboardingQuestionInputStruct? onboardingQuestionInput, [
  bool forFieldValue = false,
]) {
  if (onboardingQuestionInput == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onboardingQuestionInput.toMap());

  // Add any Firestore field values
  onboardingQuestionInput.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnboardingQuestionInputListFirestoreData(
  List<OnboardingQuestionInputStruct>? onboardingQuestionInputs,
) =>
    onboardingQuestionInputs
        ?.map((e) => getOnboardingQuestionInputFirestoreData(e, true))
        .toList() ??
    [];
