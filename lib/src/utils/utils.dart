part of google_static_maps_controller;

const _separator = "|";
const maxGoogleStaticMapsUrlSize =
    16384; //https://developers.google.com/maps/documentation/maps-static/start

MapScale getScaleForDevicePixelRatio(double devicePixelRatio) {
  if (devicePixelRatio <= 1) {
    return MapScale.scale1;
  } else if (devicePixelRatio <= 2) {
    return MapScale.scale2;
  } else {
    return MapScale.scale4;
  }
}

extension HexUtils on Color {
  String to32BitHexString() {
    return '0x${red.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${green.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${blue.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${alpha.toRadixString(16).padLeft(2, '0').toUpperCase()}';
  }

  String to24BitHexString() {
    return '0x${red.toRadixString(16).padLeft(2, '0')}'
        '${green.toRadixString(16).padLeft(2, '0')}'
        '${blue.toRadixString(16).padLeft(2, '0')}';
  }
}
