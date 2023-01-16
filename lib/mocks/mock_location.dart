import 'package:flutter_application_1/models/location.dart';
import 'package:flutter_application_1/models/location_fact.dart';

class MockLocation extends Location {
  MockLocation(super.name, super.url, super.facts);

  static final List<Location> items = [
    Location(
        'Belur',
        'https://lh5.googleusercontent.com/p/AF1QipMGBHCP97nPr2RV7U9Qw98D6ijxegfFLcVluWGg=w470-h240-k-no',
        <LocationFact>[
          LocationFact('Summary',
              'Belur is a town and taluk in Hassan district in the state of Karnataka, India. The town is renowned for its Chennakeshava Temple dedicated to Vishnu, one of the finest examples of Hoysala architecture and the largest Hindu temple complex that has survived from pre-14th-century Karnata-Dravida tradition.'),
          LocationFact('How to get there?',
              'The distance between Bangalore and Belur is 221.6 km. It can be covered in 3 to 5 hours, depending on the route you choose and the flow of traffic. You can either choose to drive through NH 48 or via NH 275 and NH 48. For the former route, which is a shorter one, you have to take Queens Road and Chowdaiah Road/Sankeys Road to CNR Rao Underpass/CV Raman Road in Malleshwara. Then, drive from NH 48 to Doddamandiganahalli. Follow Belur Road to NH234 in Belur. Turn left onto NH234 and drive to your destination in Belur.')
        ]),
    Location(
        'Nandi Hills',
        'https://lh5.googleusercontent.com/p/AF1QipP4xE3Ixn8fMQA9e2m5PgSVdbFVhAcCcAlInf6Y=w408-h544-k-no',
        <LocationFact>[
          LocationFact('Summary',
              'Nandi Hills, or Nandidurg, is a hill fortress in the south Indian state of Karnataka. Tipu Sultan Fort, a summer retreat of the namesake 18th-century ruler, features stone carvings and wall paintings. Prisoners are said to have been thrown to their death from Tipu’s Drop, now known for its panoramic views. Local Hindu temples include the hilltop Yoga Nandeeshwara Temple, guarded by a huge statue of a bull (nandi).'),
          LocationFact('How to get there?',
              'You can drive or even bike to Nandi Hills from Bengaluru via the Bangalore- Hyderabad Highway. Other cities from which you can travel to Nandi Hills by road include Bellary, Mysore and Devanahalli. Nandi Hills does not have its own bus station and the nearest one is Nelamangala, which is 43km awa')
        ]),
    Location(
        'Om Beach, Gokarna',
        'https://lh5.googleusercontent.com/p/AF1QipPwoEHf_US14iWBAEP2ELOf2oniPl5gXnqERF1U=w412-h240-k-no',
        <LocationFact>[
          LocationFact('Summary',
              'Gokarna is a small temple town located in Uttara Kannada district of Karnataka state in India,[1] It has a population of around 20,000. The main temple and deity is Shiva, who is also known as Mahabaleshwara. This temple houses what is believed to be original image of Shiva\'s linga (Atmalinga). Gokarna is known as one of the seven important Hindu pilgrimage centers. It is on what was once an unspoiled beach near the estuary of the river Aghanashini. Recently, due to the influx of tourists, the character of the town has changed; it is no longer just a centre of pilgrimage, though large numbers of devotees visit to offer prayers and worship to Shiva. Due to its laid-back, unspoiled and rustic nature many younger western tourists started visiting Gokarna about three decades ago. Enterprising locals started stores and restaurants. Later the onset of millennial youth increased the tourism. Now the resorts also cater to wealthier tourists. '),
          LocationFact('How to get there?',
              'The two best routes to take when travelling from Bangalore to Gokarna have been highlighted on the map provided under. The best route, taking the least time, is NH4, taking a meagre 8 hours 16 minutes, while the other route is longer via NH4 and NH63, taking up to a whopping 11 hours.')
        ]),
    Location(
        'Mysore Palace',
        'https://lh5.googleusercontent.com/p/AF1QipNwvECSrHrZfPliFXDkoMoZiERBGGnUWAeNS3Qp=w408-h305-k-no',
        <LocationFact>[
          LocationFact('Summary',
              'Mysore Palace, also known as Amba Vilas Palace, is a historical palace and a royal residence (house). It is located in Mysore, Karnataka. It used to be the official residence of the Wadiyar dynasty and the seat of the Kingdom of Mysore. The palace is in the centre of Mysore, and faces the Chamundi Hills eastward. Mysore is commonly described as the \'City of Palaces\', and there are seven palaces including this one. However, the Mysore Palace refers specifically to the one within the new fort.'),
          LocationFact('How to get there?',
              'Mysore city is well connected by other major towns and cities of Karnataka by train and bus. Also there are frequent interstate bus services from Mysore to many cities of Tamilnadu and Kerala. Bangalore to Mysore is a well connected and busy route. Mysore airport is relatively new and less busy, only chartered flights operate.')
        ]),
    Location(
        'Yana',
        'https://lh5.googleusercontent.com/p/AF1QipNpbCDgD3rRP1N65z2DCWR7lHmBGFB3o6qbcNIM=w408-h272-k-no',
        <LocationFact>[
          LocationFact('Summary',
              'Yana is a tourist destination located in forests of Malenadu region of Uttara Kannada district of Karnataka state in India. Yana is one of the wettest villages in the world. It is the cleanest village in Karnataka, and the second cleanest village in India'),
          LocationFact('How to get there?',
              'The road distances on the NH 17 connecting Yana village are: Kumta - 25 kilometres (16 mi), Sirsi - 40 kilometres (25 mi), Gokarna - 52 kilometres (32 mi), Hubli - 142 kilometres (88 mi) and Mangalore - 230 kilometres (140 mi). The nearest rail head is at Kumta, and the nearest airport is Hubli.')
        ])
  ];

  static Location FetchAny() {
    return items[0];
  }

  static List<Location> FetchAll() {
    return MockLocation.items;
  }

  static Location Fetch(int index) {
    return MockLocation.items[index];
  }
}
