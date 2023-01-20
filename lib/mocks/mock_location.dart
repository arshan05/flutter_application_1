import 'package:flutter_application_1/models/location.dart';
import 'package:flutter_application_1/models/location_fact.dart';

mixin MockLocation implements Location {
  // static final List<Location> items = [
  //   Location(
  //       'Arashiyama Bamboo Grove',
  //       'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
  //       <LocationFact>[
  //         LocationFact('Summary',
  //             'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  //         LocationFact('How to Get There',
  //             'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  //       ]),
  //   Location(
  //       'Mount Fuji',
  //       'https://img3.goodfon.ru/original/1920x1080/a/a5/fuji-peizazh-iaponiia-gora-tsvety-nebo.jpg',
  //       <LocationFact>[
  //         LocationFact('Summary',
  //             'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  //         LocationFact('How to Get There',
  //             'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  //       ]),
  //   Location(
  //       'Kiyomizu-dera',
  //       'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Kiyomizu-dera_in_Kyoto-r.jpg/800px-Kiyomizu-dera_in_Kyoto-r.jpg',
  //       <LocationFact>[
  //         LocationFact('Summary',
  //             'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  //         LocationFact('How to Get There',
  //             'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  //       ]),
  //   Location(
  //       'Kinkaku-ji',
  //       'https://www.asisbiz.com/Japan/Kinkaku-ji/images/0-Postcards-Kinkaku-ji-Winter.jpg',
  //       <LocationFact>[
  //         LocationFact('Summary',
  //             'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  //         LocationFact('How to Get There',
  //             'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  //       ]),
  //   Location(
  //       'Odaiba',
  //       'https://www.yhunter.ru/wp-content/uploads/2015/06/DSC1876.jpg',
  //       <LocationFact>[
  //         LocationFact('Summary',
  //             'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
  //         LocationFact('How to Get There',
  //             'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
  //       ]),
  // ];

  static final List<Location> items = [
    Location(
        id: 1,
        name: 'Belur',
        url:
            'https://images.unsplash.com/photo-1551791503-11d109020118?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
        facts: <LocationFact>[
          LocationFact('Summary',
              'Belur is a town and taluk in Hassan district in the state of Karnataka, India. The town is renowned for its Chennakeshava Temple dedicated to Vishnu, one of the finest examples of Hoysala architecture and the largest Hindu temple complex that has survived from pre-14th-century Karnata-Dravida tradition.'),
          LocationFact('How to get there?',
              'The distance between Bangalore and Belur is 221.6 km. It can be covered in 3 to 5 hours, depending on the route you choose and the flow of traffic. You can either choose to drive through NH 48 or via NH 275 and NH 48. For the former route, which is a shorter one, you have to take Queens Road and Chowdaiah Road/Sankeys Road to CNR Rao Underpass/CV Raman Road in Malleshwara. Then, drive from NH 48 to Doddamandiganahalli. Follow Belur Road to NH234 in Belur. Turn left onto NH234 and drive to your destination in Belur.')
        ]),
    Location(
        id: 2,
        name: 'Nandi Hills',
        url:
            'https://images.unsplash.com/photo-1634052177418-78d4ee518abc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1026&q=80',
        facts: <LocationFact>[
          LocationFact('Summary',
              'Nandi Hills, or Nandidurg, is a hill fortress in the south Indian state of Karnataka. Tipu Sultan Fort, a summer retreat of the namesake 18th-century ruler, features stone carvings and wall paintings. Prisoners are said to have been thrown to their death from Tipu’s Drop, now known for its panoramic views. Local Hindu temples include the hilltop Yoga Nandeeshwara Temple, guarded by a huge statue of a bull (nandi).'),
          LocationFact('How to get there?',
              'You can drive or even bike to Nandi Hills from Bengaluru via the Bangalore- Hyderabad Highway. Other cities from which you can travel to Nandi Hills by road include Bellary, Mysore and Devanahalli. Nandi Hills does not have its own bus station and the nearest one is Nelamangala, which is 43km awa')
        ]),
    Location(
        id: 3,
        name: 'Om Beach, Gokarna',
        url:
            'https://images.unsplash.com/photo-1567098628209-d182949882b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80',
        facts: <LocationFact>[
          LocationFact('Summary',
              'Gokarna is a small temple town located in Uttara Kannada district of Karnataka state in India,[1] It has a population of around 20,000. The main temple and deity is Shiva, who is also known as Mahabaleshwara. This temple houses what is believed to be original image of Shiva\'s linga (Atmalinga). Gokarna is known as one of the seven important Hindu pilgrimage centers. It is on what was once an unspoiled beach near the estuary of the river Aghanashini. Recently, due to the influx of tourists, the character of the town has changed; it is no longer just a centre of pilgrimage, though large numbers of devotees visit to offer prayers and worship to Shiva. Due to its laid-back, unspoiled and rustic nature many younger western tourists started visiting Gokarna about three decades ago. Enterprising locals started stores and restaurants. Later the onset of millennial youth increased the tourism. Now the resorts also cater to wealthier tourists. '),
          LocationFact('How to get there?',
              'The two best routes to take when travelling from Bangalore to Gokarna have been highlighted on the map provided under. The best route, taking the least time, is NH4, taking a meagre 8 hours 16 minutes, while the other route is longer via NH4 and NH63, taking up to a whopping 11 hours.')
        ]),
    Location(
        id: 4,
        name: 'Mysore Palace',
        url:
            'https://images.unsplash.com/photo-1590766940554-634a7ed41450?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1599&q=80',
        facts: <LocationFact>[
          LocationFact('Summary',
              'Mysore Palace, also known as Amba Vilas Palace, is a historical palace and a royal residence (house). It is located in Mysore, Karnataka. It used to be the official residence of the Wadiyar dynasty and the seat of the Kingdom of Mysore. The palace is in the centre of Mysore, and faces the Chamundi Hills eastward. Mysore is commonly described as the \'City of Palaces\', and there are seven palaces including this one. However, the Mysore Palace refers specifically to the one within the new fort.'),
          LocationFact('How to get there?',
              'Mysore city is well connected by other major towns and cities of Karnataka by train and bus. Also there are frequent interstate bus services from Mysore to many cities of Tamilnadu and Kerala. Bangalore to Mysore is a well connected and busy route. Mysore airport is relatively new and less busy, only chartered flights operate.')
        ]),
    Location(
        id: 5,
        name: 'Yana',
        url:
            'https://images.unsplash.com/photo-1634303771727-cf3db81e56fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        facts: <LocationFact>[
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
