import 'package:flutter_riverpod/flutter_riverpod.dart';

enum VisiblePage { review, rating, done }

final visiblePageProvider = StateProvider<VisiblePage>((ref) {
  return VisiblePage.review;
});
