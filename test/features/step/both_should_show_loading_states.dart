import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';

/// Usage: both should show loading states
Future<void> bothShouldShowLoadingStates(WidgetTester tester) async {
  // Verify shimmer effects are present in both areas
  expect(find.byType(Shimmer), findsWidgets);
  
  // Instead of pumpAndSettle, use a fixed number of frames
  await tester.pump(); // Process the first frame
  await tester.pump(const Duration(milliseconds: 100)); // Process animation frame
}
