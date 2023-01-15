import 'package:flutter/material.dart';
import 'package:flutter_application_1/Styles.dart';
import 'package:flutter_application_1/loaction_detail.dart';
import 'package:flutter_application_1/models/location.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

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
        itemCount: this.locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }
  Widget _listViewItemBuilder(BuildContext context, int index){
    var location = this.locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemTumbnail(location),
      title: _itemTitle(location),
      onTap: () {
        _navigatonToLocationDetail(context,location);
      },
    );
  }

  void _navigatonToLocationDetail(BuildContext context, Location location) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationDetail(location),
        ));
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
}