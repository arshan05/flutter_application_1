import 'package:flutter/material.dart';
import 'package:flutter_application_1/Styles.dart';
import 'package:flutter_application_1/models/location.dart';

class LocationList extends StatelessWidget {
  final List<Location> location;

  LocationList(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Locations",
          style: Styles.navBarTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: this.location.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: _itemTumbnail(this.location[index]),
            title: _itemTitle(this.location[index]),
          );
        },
      ),
    );
  }
}

_itemTitle(Location location) {
  return Text(location.name, style: Styles.textDefault);
}

_itemTumbnail(Location location) {
  return Container(
    constraints: BoxConstraints.tightFor(width: 100.0),
    child: Image.network(
      location.url,
      fit: BoxFit.fitWidth,
    ),
  );
}
