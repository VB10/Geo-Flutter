import 'package:flutter/material.dart';
import './geo_view_view_model.dart';

class GeoViewView extends GeoViewViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: AppBar(
        title: Text(location),
      ),
    );
  }
}
