import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:carp_background_location/carp_background_location.dart';
import 'package:dawar_smart/Widgets/dto.dart';

class live_location extends StatefulWidget {
  const live_location({Key? key}) : super(key: key);

  @override
  _live_locationState createState() => _live_locationState();
}

enum LocationStatus { UNKNOWN, INITIALIZED, RUNNING, STOPPED }

String dtoToString(LocationDto dto) =>
    'Location ${dto.latitude}, ${dto.longitude} at ${DateTime.fromMillisecondsSinceEpoch(dto.time ~/ 1)}';



class _live_locationState extends State<live_location>
{
  String logStr = '';
  LocationDto? lastLocation;
  DateTime? lastTimeLocation;
  Stream<LocationDto>? locationStream;
  StreamSubscription<LocationDto>? locationSubscription;
  LocationStatus _status = LocationStatus.UNKNOWN;

  @override
  void initState() {
    super.initState();

    LocationManager().interval = 1;
    LocationManager().distanceFilter = 0;
    LocationManager().notificationTitle = 'Dawar';
    LocationManager().notificationMsg = 'Dawar is tracking your Patterns';
    locationStream = LocationManager().locationStream;

    _status = LocationStatus.INITIALIZED;
  }

  void onData(LocationDto dto) {
    // print(dtoToString(dto));
    print(dto);
    setState(() {
      lastLocation = dto;
      lastTimeLocation = DateTime.now();
    });
  }

  Future<bool> isLocationAlwaysGranted() async =>
      await Permission.locationAlways.isGranted;

  Future<bool> askForLocationAlwaysPermission() async {
    bool granted = await Permission.locationAlways.isGranted;

    if (!granted) {
      granted =
          await Permission.locationAlways.request() == PermissionStatus.granted;
    }

    return granted;
  }

  void start() async {
    // ask for location permissions, if not already granted
    if (!await isLocationAlwaysGranted())
      await askForLocationAlwaysPermission();

    locationSubscription?.cancel();
    locationSubscription = locationStream?.listen(onData);
    await LocationManager().start();
    setState(() {
      _status = LocationStatus.RUNNING;
    });
  }

  void stop() {
    locationSubscription?.cancel();
    LocationManager().stop();
    setState(() {
      _status = LocationStatus.STOPPED;
    });
  }

  Widget stopButton() => dtoButton(func: stop,txt: 'stop');

  Widget startButton() => dtoButton(func: start,txt: 'start');

  Widget status() => Text(
        "Status: ${_status.toString().split('.').last}",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      );

  Widget lastLoc() => Text(
        lastLocation != null
            ? dtoToString(lastLocation!)
            : 'Unknown last location',
        textAlign: TextAlign.center,
      );

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) {
    final widget = dtoWidget;
    return MaterialApp(
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DawarAI'),
        ),
        body: Container(
          padding: const EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Divider(),
                status(),
                Divider(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.20),
                widget(lastLocation),
                SizedBox(height: MediaQuery.of(context).size.height * 0.18),
                startButton(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                stopButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
