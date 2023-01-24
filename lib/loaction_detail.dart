import 'package:flutter/material.dart';
import 'package:flutter_application_1/Styles.dart';
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_application_1/models/location.dart';

class LocationDetail extends StatefulWidget {
  final int locationID;

  LocationDetail(this.locationID);

  @override
  createState() => _LocationDetailState(this.locationID);
}

class _LocationDetailState extends State<LocationDetail> {
  final int locationId;
  Location location = Location.blank();

  _LocationDetailState(this.locationId);

  bool loading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            location.name,
            style: Styles.navBarTitle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              renderProgressBar(context),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _renderBody(context, location))
            ],
          ),
        ));
  }

  loadData() async {
    setState(() => this.loading = true);
    final location = await Location.fetchByID(this.locationId);

    if (mounted) {
      setState(() {
        this.location = location;
        this.loading = false;
      });
    }
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

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));

    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    for (int i = 0; i < (location.facts ?? []).length; i++) {
      result.add(_sectionTitle(location.facts![i].title));
      result.add(_sectionText(location.facts![i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: Styles.headerLarge,
        ));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Text(
          text,
          style: Styles.textDefault,
        ));
  }

  Widget _bannerImage(String url, double height) {
    var image;
    try {
      if (url.isNotEmpty) {
        image = Image.network(url, fit: BoxFit.fitWidth);
      }
    } catch (e) {
      print("couldn't load $url");
    }

    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: image,
      margin: EdgeInsets.all(10.0),
    );
  }
}
