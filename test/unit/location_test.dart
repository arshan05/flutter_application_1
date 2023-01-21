import 'package:test/test.dart';
import '../../lib/models/location.dart';

void main() {
  test('test /locations and /locations/:id', () async {
    final locations = await Location.fetchAll();
    for (var location in locations) {
      expect(location.id, greaterThan(0));
      expect(location.name, hasLength(greaterThan(0)));
      expect(location.url, hasLength(greaterThan(0)));

      final fetchedLocation = await Location.fetchByID(location.id);
      expect(fetchedLocation.name, equals(location.name));
      expect(fetchedLocation.url, equals(location.url));
      expect(fetchedLocation.facts, hasLength(greaterThan(0)));
    }
  });
}

// void main(){
//   test('test /locations and /locations/:id', () async {
//     final locations = await MockLocation.FetchAll();
//     int index = 0;
//     for (var location in locations) {
//       expect(location.name, hasLength(greaterThan(0)));
//       expect(location.url, hasLength(greaterThan(0)));
//
//       final fetchedLocation =  MockLocation.Fetch(index);
//       expect(fetchedLocation.name, equals(location.name));
//       expect(fetchedLocation.url, equals(location.url));
//       expect(fetchedLocation.facts, hasLength(greaterThan(0)));
//       index++;
//     }
//   });
// }

// void main() {
//   test('test /locations and /locations/:id', () async {
//
//     final locations = await Location.fetchAll();
//
//     for (var location in locations) {
//       expect(location.id, greaterThan(0));
//       expect(location.name, hasLength(greaterThan(0)));
//       expect(location.url, hasLength(greaterThan(0)));
//
//       final fetchedLocation = await Location.fetchByID(location.id);
//       expect(fetchedLocation.name, equals(location.name));
//       expect(fetchedLocation.url, equals(location.url));
//       expect(fetchedLocation.facts, hasLength(greaterThan(0)));
//     }
//   });
// }
