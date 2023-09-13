import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wo_wx_final_review/providers/tec_map_provider.dart';

import '../constants.dart';

// final textEditingControllerProvider =
//     Provider.family<TextEditingController, TextFieldId>((
//   ref,
//   textFieldId, {
//   int index = 0,
// }) {
//   final Map<TextFieldId, Map<int, TextEditingController>> controllerMap = {};

//   return controllerMap
//       .putIfAbsent(textFieldId, () => {})
//       .putIfAbsent(index, () => TextEditingController());
// });

part 'text_controller_provider.g.dart';

@riverpod
TextEditingController tec(
  TecRef ref,
  TextFieldId fieldId, {
  int i = 0,
  int j = 0,
}) {
  final m = ref.read(tecMapProvider);

  final t = m
      .putIfAbsent(fieldId, () => {})
      .putIfAbsent(i, () => {})
      .putIfAbsent(j, () => TextEditingController());

  return t;
}
