import 'package:flutter/material.dart';

import 'loading_widget.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key, this.size}) : super(key: key);
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(10, (index) => LoadingWidget())),
    );
  }
}
