import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Svg extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final Color? color;

  const Svg(this.path, {Key? key, this.height, this.width, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$path.svg',
      semanticsLabel: path,
      width: width,
      height: height,
      color: color,
    );
  }
}
