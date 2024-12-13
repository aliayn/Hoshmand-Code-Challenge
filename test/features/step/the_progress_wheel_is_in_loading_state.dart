import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';

/// Usage: the progress wheel is in loading state
Future<void> theProgressWheelIsInLoadingState(WidgetTester tester) async {
  final progressWheel = find.byType(ProgressWheel);
  expect(progressWheel, findsOneWidget);
  
  // Verify shimmer effect is present in progress wheel
  expect(
    find.descendant(
      of: progressWheel,
      matching: find.byType(Shimmer),
    ),
    findsWidgets,
  );
  
  await tester.pump();
}
