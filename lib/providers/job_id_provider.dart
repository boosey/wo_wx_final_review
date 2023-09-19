import 'package:flutter_riverpod/flutter_riverpod.dart';

String j = "";

final jobIdProvider = StateProvider<String>((ref) {
  return j;
});
