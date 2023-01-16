
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test("test fetchAny",(){
    final mockLocation = MockLocation.FetchAny();
    expect(mockLocation, isNotNull);
    expect(mockLocation.name, isNotEmpty);
  });

  test("test fetchAll",(){
    final mockLocation = MockLocation.FetchAll();
    expect(mockLocation.length, greaterThan(0));
    expect(mockLocation[0].name, isNotEmpty);
  });

  test("test fetch",(){
    final mockLocation = MockLocation.Fetch(0);
    expect(mockLocation, isNotNull);
    expect(mockLocation.name, isNotEmpty);
  });
}