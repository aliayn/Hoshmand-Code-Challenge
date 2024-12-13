import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';

/// Usage: it should attempt to load units again
Future<void> itShouldAttemptToLoadUnitsAgain(WidgetTester tester) async {
  // Verify loading state is shown again
  expect(find.byType(Shimmer), findsWidgets);
  await tester.pump(const Duration(seconds: 1));
}
