import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab15/main.dart';

void main() {
  // Тест для FunctionCalculator
  test('FunctionCalculator calculates correctly', () {
    final calculator = FunctionCalculator();

    expect(calculator.calculate(0), -1);
    expect(calculator.calculate(1), 10);
    expect(calculator.calculate(-1), -14);
  });

  // Тест для перевірки тексту у заголовку
  testWidgets('UI contains correct title text', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text("KN-31: Vladyslav`s last Flutter App"), findsOneWidget);
  });

  // Тест для FloatingActionButton
  testWidgets('FloatingActionButton has correct icon', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final fab = find.byType(FloatingActionButton);
    expect(fab, findsOneWidget);
    expect(find.byIcon(Icons.mouse), findsOneWidget);
  });

  // Тест для перевірки кроку лічильника
  testWidgets('Counter increments by 1', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Перевірка початкового значення
    expect(find.text('0'), findsOneWidget);

    // Клік по кнопці
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Перевірка значення після натискання
    expect(find.text('1'), findsOneWidget);
  });
}
