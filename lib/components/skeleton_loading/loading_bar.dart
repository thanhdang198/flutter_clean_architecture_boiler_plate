import 'package:flutter/material.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({Key? key, required this.width, this.height})
      : super(key: key);
  final double width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 10,
      decoration: BoxDecoration(
          color: const Color(0xFFEAEBF0),
          borderRadius: BorderRadius.circular(30)),
    );
  }
}
