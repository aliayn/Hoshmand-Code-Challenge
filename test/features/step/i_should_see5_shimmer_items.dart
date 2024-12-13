import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';

/// Usage: I should see 5 shimmer items
Future<void> iShouldSee5ShimmerItems(WidgetTester tester) async {
  final shimmerItems = find.descendant(
    of: find.byType(Shimmer),
    matching: find.byType(Container),
  );
  expect(shimmerItems, findsNWidgets(5));
}
