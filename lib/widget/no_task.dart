import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoTask extends StatelessWidget {
  final String assetName = 'lib/image/undraw_my_notifications_rjej.svg';
  final Widget svg = SvgPicture.asset(
      'lib/image/undraw_my_notifications_rjej.svg',
      semanticsLabel: 'Acme Logo');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(assetName),
      ),
    );
  }
}
