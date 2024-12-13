import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';

/// Usage: both should show loading states
Future<void> bothShouldShowLoadingStates(WidgetTester tester) async {
  // Verify both progress wheel and content area show shimmer effects
  expect(find.byType(Shimmer), findsAtLeastNWidgets(2));
}
