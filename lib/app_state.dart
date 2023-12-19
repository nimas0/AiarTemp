import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _toLikeOrNotToLike = false;
  bool get toLikeOrNotToLike => _toLikeOrNotToLike;
  set toLikeOrNotToLike(bool _value) {
    _toLikeOrNotToLike = _value;
  }

  bool _icon1toggle = false;
  bool get icon1toggle => _icon1toggle;
  set icon1toggle(bool _value) {
    _icon1toggle = _value;
  }

  bool _icon2toggle = false;
  bool get icon2toggle => _icon2toggle;
  set icon2toggle(bool _value) {
    _icon2toggle = _value;
  }

  bool _icon3toggle = false;
  bool get icon3toggle => _icon3toggle;
  set icon3toggle(bool _value) {
    _icon3toggle = _value;
  }

  List<dynamic> _ShowData = [];
  List<dynamic> get ShowData => _ShowData;
  set ShowData(List<dynamic> _value) {
    _ShowData = _value;
  }

  void addToShowData(dynamic _value) {
    _ShowData.add(_value);
  }

  void removeFromShowData(dynamic _value) {
    _ShowData.remove(_value);
  }

  void removeAtIndexFromShowData(int _index) {
    _ShowData.removeAt(_index);
  }

  void updateShowDataAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ShowData[_index] = updateFn(_ShowData[_index]);
  }

  void insertAtIndexInShowData(int _index, dynamic _value) {
    _ShowData.insert(_index, _value);
  }

  String _ApiKey = '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';
  String get ApiKey => _ApiKey;
  set ApiKey(String _value) {
    _ApiKey = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
