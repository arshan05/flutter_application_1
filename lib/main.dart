import 'package:flutter/material.dart';
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_application_1/models/location.dart';
import 'package:flutter_application_1/models/location_list.dart';
import 'loaction_detail.dart';

void main() {
  final  mockLocation = MockLocation.FetchAll();
  return runApp(MaterialApp(home: LocationList(mockLocation)));
}
