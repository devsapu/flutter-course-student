// Simple Flutter widget test – demonstrates how widget tests work.
//
// Widget tests:
// 1. Build a widget (or the whole app) with tester.pumpWidget()
// 2. Use find to locate widgets (by text, icon, type, etc.)
// 3. Use expect with matchers like findsOneWidget, findsNothing
// 4. Optionally interact: tester.tap(), tester.enterText(), then pump()

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/main.dart';

void main() {
  testWidgets('App shows Task Manager title and welcome message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const TaskManagerApp());

    // AppBar title from HomePage.
    expect(find.textContaining('Week 2'), findsOneWidget); 

    // Body text from HomePage.
    expect(find.text('Welcome to Task Manager'), findsOneWidget);

    expect(find.textContaining('Week 2'), findsOneWidget);

    expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);

    // Other useful matchers: findsNothing, findsWidgets, findsNWidgets(2)
  });
}
