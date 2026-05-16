import 'package:flutter_test/flutter_test.dart';
import 'package:tap_rush_game/main.dart';

void main() {
  testWidgets('Home screen shows start button', (WidgetTester tester) async {
    await tester.pumpWidget(const TapRushApp());
    expect(find.text('Tap Rush'), findsOneWidget);
    expect(find.text('Start 30s round'), findsOneWidget);
  });
}
