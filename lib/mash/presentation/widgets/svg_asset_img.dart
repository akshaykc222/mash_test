import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

assetFromSvg(String assetName, {Color? color, double? height, double? width}) {
  final Widget svg =
      SvgPicture.asset(assetName, color: color, semanticsLabel: 'Acme Logo');
  return svg;
}
