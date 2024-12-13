import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/unit_content_list.dart';

/// Usage: I should see the unit content area
Future<void> iShouldSeeTheUnitContentArea(WidgetTester tester) async {
  expect(find.byType(UnitContentItem), findsOneWidget);
}
