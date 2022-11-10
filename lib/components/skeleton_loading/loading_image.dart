import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../style/style.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 2500),
      baseColor: const Color(0xFFEAEBF0),
      highlightColor: white,
      child: Image.asset('assets/images/error_image.png'),
    );
  }
}
