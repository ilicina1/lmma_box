// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lmma_box/main.dart';
import 'package:lmma_box/view/welcome_screen/pages/first_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/page_scroller.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/app_icon.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/welcome_screen_pagination.dart';

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
