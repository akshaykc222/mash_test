import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

assetFromSvg(String assetName){
   
final Widget svg = SvgPicture.asset(
  assetName,
  semanticsLabel: 'Acme Logo'
);
return svg;
}