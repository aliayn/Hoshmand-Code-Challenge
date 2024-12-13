import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';

/// Usage: I select a different unit
Future<void> iSelectADifferentUnit(WidgetTester tester) async {
  final wheel = find.byType(ProgressWheel);
  await tester.drag(wheel, const Offset(0, -100));
  await tester.pumpAndSettle();
}
