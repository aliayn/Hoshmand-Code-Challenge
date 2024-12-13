import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';

/// Usage: I should see shimmer loading effects
Future<void> iShouldSeeShimmerLoadingEffects(WidgetTester tester) async {
  expect(find.byType(Shimmer), findsWidgets);
}
