import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Styles.dart';
import 'package:flutter_application_1/components/banner_image.dart';
import 'package:flutter_application_1/components/default_app_bar.dart';
import 'package:flutter_application_1/components/location_tile.dart';
import 'package:flutter_application_1/loaction_detail.dart';
import 'package:flutter_application_1/models/location.dart';

const ListItemHeight = 245.0;

class LocationList extends StatefulWidget {
  @override
  createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  List<Location> locations = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(),
        body: RefreshIndicator(
            onRefresh: loadData,
            child: Column(
              children: [
                renderProgressBar(context),
                Expanded(child: renderListView(context))
              ],
            )));
  }

  Future<void> loadData() async {
    if (this.mounted) {
      setState(() => this.loading = true);
      final locations = await Location.fetchAll();
      setState(() {
        this.locations = locations;
        this.loading = false;
      });
    }
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    final location = this.locations[index];
    return GestureDetector(
        onTap: () => _navigatonToLocationDetail(context, location.id),
        child: Container(
          height: ListItemHeight,
          child: Stack(children: [
            BannerImage(url: location.url, height: ListItemHeight),
            _tileFooter(location),
          ]),
        ));
  }

  Widget renderProgressBar(BuildContext context) {
    return this.loading
        ? LinearProgressIndicator(
            value: null,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blueGrey),
          )
        : Container();
  }

  Widget renderListView(BuildContext context) {
    return ListView.builder(
      itemCount: this.locations.length,
      itemBuilder: _listViewItemBuilder,
    );
  }

  void _navigatonToLocationDetail(BuildContext context, int locationId) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationDetail(locationId),
        ));
  }

  Widget _tileFooter(Location location) {
    final info = LocationTile(location: location, darkTheme: true);
    final overlay = Container(
      padding: EdgeInsets.symmetric(
          vertical: 5.0, horizontal: Styles.horizontalPaddingDefault),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
      child: info,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [overlay],
    );
  }
}
