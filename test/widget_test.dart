import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lmma_box/view/welcome_screen/pages/first_page.dart';

void main() {
  Widget createWidgetForTesting({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Koristi se Scaffold', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: new FirstPage()));
    var textField = find.byType(Scaffold);
    expect(textField, findsOneWidget);
  });

  testWidgets('Naslov je dobar', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: new FirstPage()));
    var textField = find.text("Welcome to LmaaBox");
    expect(textField, findsOneWidget);
  });

  testWidgets('Postoji logo firme', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: new FirstPage()));
    var textField = find.byType(Image);
    expect(textField, findsOneWidget);
  });
}
