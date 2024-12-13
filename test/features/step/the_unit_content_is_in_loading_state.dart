import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';

/// Usage: the unit content is in loading state
Future<void> theUnitContentIsInLoadingState(WidgetTester tester) async {
  // Verify shimmer effect is present in content area
  expect(
    find.descendant(
      of: find.byType(Shimmer),
      matching: find.byType(Container),
    ),
    findsWidgets,
  );
  
  await tester.pump();
}
