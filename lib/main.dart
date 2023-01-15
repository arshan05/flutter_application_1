import 'package:flutter/material.dart';
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_application_1/models/location.dart';
import 'loaction_detail.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();
  return runApp(MaterialApp(home: LocationDetail(mockLocation)));
}
