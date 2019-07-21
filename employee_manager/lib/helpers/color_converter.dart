import 'package:flutter/widgets.dart';

Color toRGB(String hexa) {
  return Color(int.parse('0xff'+hexa));
}