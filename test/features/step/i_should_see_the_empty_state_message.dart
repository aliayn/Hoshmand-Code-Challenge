import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see the empty state message
Future<void> iShouldSeeTheEmptyStateMessage(WidgetTester tester) async {
  expect(find.text('محتوایی موجود نیست'), findsOneWidget);
}
