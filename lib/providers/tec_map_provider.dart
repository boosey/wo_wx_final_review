import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wo_wx_final_review/constants.dart';

final tecMapProvider =
    Provider<Map<TextFieldId, Map<int, Map<int, TextEditingController>>>>(
        (ref) => {});
