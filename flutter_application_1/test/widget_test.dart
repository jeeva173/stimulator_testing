import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Hi World app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HiWorldApp());

    // Verify that 'Hi World' is displayed.
    expect(find.text('Hi World'), findsWidgets);
  });
}
