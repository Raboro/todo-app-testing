import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:todo_flutter/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Todo e2e tests', () {
    testWidgets('add and remove todo', (tester) async {
      await tester.pumpWidget(const TodoApp());

      // Add Homework
      expect(find.byIcon(Icons.add), findsOneWidget);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.text('Add new Todo'), findsOneWidget);
      expect(find.text('Enter a new Todo'), findsOneWidget);
      expect(find.text('Description of Todo'), findsOneWidget);
      final todoTitleFinder = find.byKey(const ValueKey('TodoNameInput'));
      final todoDescriptionFinder =
          find.byKey(const ValueKey('TodoDescriptionInput'));
      expect(todoTitleFinder, findsOneWidget);
      expect(todoDescriptionFinder, findsOneWidget);
      await tester.enterText(todoTitleFinder, 'Homework');
      await tester.enterText(todoDescriptionFinder, 'Do the homework');

      await tester.tap(find.byWidgetPredicate(
        (widget) =>
            widget is ElevatedButton &&
            widget.child is Text &&
            (widget.child as Text).data == 'Add',
      ));
      await tester.pumpAndSettle();

      // check if Homework was added
      expect(todoTitleFinder, findsNothing);
      expect(todoDescriptionFinder, findsNothing);
      expect(find.text('Homework'), findsOneWidget);
      expect(find.text('Do the homework'), findsOneWidget);
      expect(find.byWidgetPredicate((widget) => widget is Dismissible),
          findsOneWidget);

      // try to remove Homework, but choose no
      await tester.drag(
          find.byWidgetPredicate((widget) => widget is Dismissible),
          const Offset(500, 0));
      await tester.pumpAndSettle();
      expect(find.text('Do you want to delete: \n"Instance of \'TodoModel\'"?'),
          findsOneWidget);
      await tester.tap(find.text('No'));
      await tester.pumpAndSettle();
      expect(find.text('Homework'), findsOneWidget);

      // remove Homework
      await tester.drag(
          find.byWidgetPredicate((widget) => widget is Dismissible),
          const Offset(500, 0));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Yes'));
      await tester.pumpAndSettle();
      expect(find.text('Homework'), findsNothing);
    });
  });
}
