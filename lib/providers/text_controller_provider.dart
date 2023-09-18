import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wo_wx_final_review/providers/tec_map_provider.dart';

part 'text_controller_provider.g.dart';

@riverpod
TextEditingController tec(
  TecRef ref,
  String fieldId,
) {
  return ref
      .read(tecMapProvider)
      .putIfAbsent(fieldId, () => TextEditingController());
}
