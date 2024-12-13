import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see an error message
Future<void> iShouldSeeAnErrorMessage(WidgetTester tester) async {
  throw UnimplementedError();
}
