import 'package:flutter_test/flutter_test.dart';

/// Usage: the content is rendered
Future<void> theContentIsRendered(WidgetTester tester) async {
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 100));
}
