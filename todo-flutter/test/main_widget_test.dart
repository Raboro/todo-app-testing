import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_flutter/main.dart';

void main() {
  testWidgets('TodoApp should contain add button', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
