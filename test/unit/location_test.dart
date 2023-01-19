import 'dart:convert';
import 'package:flutter_application_1/models/location.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('test location deserialization', (){
    const locationJSON =  '{"name": "Belur","url": "https://images.unsplash.com/photo-1551791503-11d109020118?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80", "facts": [{"title": "Summary", "text": "Belur is a town and taluk in Hassan district in the state of Karnataka, India. The town is renowned for its Chennakeshava Temple dedicated to Vishnu, one of the finest examples of Hoysala architecture and the largest Hindu temple complex that has survived from pre-14th-century Karnata-Dravida tradition."}]}';
    final locationMap = json.decode(locationJSON) as Map<String,dynamic>;

    expect('Belur', equals(locationMap['name']));

    final location = Location.fromJson(locationMap);
    expect(location.name, equals(locationMap['name']));
    expect(location.url, equals(locationMap['url']));

  });
}