import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
           context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: MARGIN_MEDIUM),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: MARGIN_MEDIUM),
        ],
      ),
      body: Stack(
        children: [
          GoogleMapSectionView(),
          const Align(
            alignment: Alignment.bottomCenter,
            child: GalleryDistanceSectionView(),
          ),
        ],
      ),
    );
  }
}

class GalleryDistanceSectionView extends StatelessWidget {
  const GalleryDistanceSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM_3,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM_2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GalleryImageAndNameView(),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            color: const Color.fromRGBO(0, 0, 0, 0.1),
            height: 1,
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          const DistanceView(),
        ],
      ),
    );
  }
}

class DistanceView extends StatelessWidget {
  const DistanceView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: MARGIN_MEDIUM_2),
        Image.asset(
          "assets/images/distance.png",
          width: 30,
        ),
        const SizedBox(width: MARGIN_MEDIUM_2),
        Text(
          "Distance   :   ",
          style: knNormalText().copyWith(
            color: const Color.fromRGBO(0, 0, 0, 0.7),
          ),
        ),
        Text(
          "32 Kilometers",
          style: knNormalText().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class GalleryImageAndNameView extends StatelessWidget {
  const GalleryImageAndNameView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
          child: Image.network(
            "https://images.unsplash.com/photo-1518998053901-5348d3961a04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXJ0JTIwZ2FsbGVyeXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: MARGIN_MEDIUM),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cherry Moon Art Gallery",
              style: knSubTitle().copyWith(
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: MARGIN_SMALL),
            Text(
              "Yangon, Myanmar",
              style: knNormalText().copyWith(
                color: const Color.fromRGBO(0, 0, 0, 0.7),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class GoogleMapSectionView extends StatefulWidget {
  @override
  State<GoogleMapSectionView> createState() => _GoogleMapSectionViewState();
}

class _GoogleMapSectionViewState extends State<GoogleMapSectionView> {
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  List<LatLng> polylineCoordinates = [];


  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(), "assets/images/marker.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  Completer<GoogleMapController> _controller = Completer();

  final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(20.42796133580664, 80.885749655962),
    zoom: 14.4746,
  );

  final List<Marker> _markers = <Marker>[
    const Marker(
        markerId: MarkerId('1'),
        position: LatLng(20.42796133580664, 75.885749655962),
        infoWindow: InfoWindow(
          title: 'My Position',
        )),
  ];

  // created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR" + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _kGoogle,
      markers: Set<Marker>.of(_markers),
      mapType: MapType.hybrid,
      myLocationEnabled: true,
      trafficEnabled: true,
      compassEnabled: true,
      zoomControlsEnabled: false,
      polylines: {
        Polyline(
          polylineId: const PolylineId("route"),
          points: polylineCoordinates,
          color: kPrimaryColor,
          width: 6,
        ),
      },
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
        getUserCurrentLocation().then((value) async {
          // marker added for current users location
          _markers.add(Marker(
            markerId: const MarkerId("2"),
            position: LatLng(value.latitude, value.longitude),
            infoWindow: const InfoWindow(
              title: 'My Current Location',
            ),
            icon: markerIcon,
          ));

          // specified current users location
          CameraPosition cameraPosition = CameraPosition(
            target: LatLng(value.latitude, value.longitude),
            zoom: 14,
          );

          final GoogleMapController controller = await _controller.future;
          controller
              .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
          setState(() {});

          /// Polylines
          PolylinePoints polylinePoints = PolylinePoints();
          PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
            "AIzaSyCBV3FXpenk0k9nu-G8fy0NPO6MPKVlCrA", // Your Google Map Key
            PointLatLng(value.latitude, value.longitude),
            PointLatLng(37.42295398281283, -122.08869296033203),
          );

          print("Result is =======> ${result.status}");
          if (result.points.isNotEmpty) {
            result.points.forEach(
                  (PointLatLng point) => polylineCoordinates.add(
                LatLng(point.latitude, point.longitude),
              ),
            );
            setState(() {});
          }
        });
      },
    );
  }
}
