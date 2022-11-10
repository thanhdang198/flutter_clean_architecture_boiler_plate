import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../../style/style.dart';
import 'loading_bar.dart';
import '../../helper/svg.dart';

// ignore: must_be_immutable
class LoadingWidget extends StatelessWidget {
  LoadingWidget({Key? key}) : super(key: key);

  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(16)),
      child: Shimmer.fromColors(
          period: const Duration(milliseconds: 2500),
          baseColor: const Color(0xFFEAEBF0),
          highlightColor: white,
          child: ListTile(
            leading: const Svg('loading_icon'),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoadingBar(
                  height: 15,
                  width: width * 0.4,
                ),
                LoadingBar(
                  height: 15,
                  width: width * 0.15,
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoadingBar(
                  width: width * 0.3,
                ),
                LoadingBar(
                  width: width * 0.15,
                ),
              ],
            ),
          )),
    );
    // return Shimmer(
    //     child: const Svg('loading_icon'), gradient: horizontalGradient);
  }
}
