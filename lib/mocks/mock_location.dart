import 'package:flutter_application_1/models/location.dart';
import 'package:flutter_application_1/models/location_fact.dart';

class MockLocation extends Location {
  MockLocation(super.name, super.url, super.facts);

  static Location FetchAny() {
    return Location(
        'Yana',
        'https://lh5.googleusercontent.com/p/AF1QipNpbCDgD3rRP1N65z2DCWR7lHmBGFB3o6qbcNIM=w408-h272-k-no',
        <LocationFact>[
          LocationFact('Summary',
              'Yana is a tourist destination located in forests of Malenadu region of Uttara Kannada district of Karnataka state in India. Yana is one of the wettest villages in the world. It is the cleanest village in Karnataka, and the second cleanest village in India'),
              LocationFact(
                'How to get there?', 
                'The road distances on the NH 17 connecting Yana village are: Kumta - 25 kilometres (16 mi), Sirsi - 40 kilometres (25 mi), Gokarna - 52 kilometres (32 mi), Hubli - 142 kilometres (88 mi) and Mangalore - 230 kilometres (140 mi). The nearest rail head is at Kumta, and the nearest airport is Hubli.')
        ]);
  }
}
