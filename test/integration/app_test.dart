import 'package:flutter/material.dart';
import 'package:flutter_application_1/app.dart';
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';

void main() {
  testWidgets('test app startup', (WidgetTester tester) async {
    provideMockedNetworkImages(() async{
      runApp(App());
      await tester.pumpWidget(App());

      final mockLoction = MockLocation.FetchAny();

      expect(find.text(mockLoction.name), findsOneWidget);
      expect(find.text('${mockLoction.name}blah'), findsNothing);
    });
  });
}