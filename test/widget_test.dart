// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:kapitan_bomba_go/components/rounded_button.dart';
import 'package:kapitan_bomba_go/constants/constants.dart';

import 'package:kapitan_bomba_go/main.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  testWidgets("Test for screen welcome", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.widgetWithText(RoundedButton, login_button_text), findsOneWidget);
    expect(find.widgetWithText(RoundedButton, register_button_text), findsOneWidget);
    await tester.tap(find.text(login_button_text));
    await tester.pump();
    // expect(find.text(title_main_view), findsNothing);
    // expect(find.text(login_button_text), findsNothing);
    // expect(find.text(register_button_text), findsNothing);

  }
  );
}
