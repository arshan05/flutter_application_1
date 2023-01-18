import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_application_1/models/location_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mockLocations = MockLocation.FetchAll();
    return MaterialApp(home: LocationList(mockLocations));
  }

}