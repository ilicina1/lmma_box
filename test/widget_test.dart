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

void main() {
  testWidgets('Ne postoji ovakav title', (WidgetTester tester) async {
    await tester.pumpWidget(PageScroller());
    var textField = find.byType(Scaffold);
    expect(textField, findsOneWidget);
/*
    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);*/
  });
}
