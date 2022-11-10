import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'skeleton_loading/loading_image.dart';

class CachedNetworkImageWithDefault extends StatelessWidget {
  final String image;
  final double? borderRadius;
  final double? width;
  final double? height;
  final bool? hasThump;
  final String? defaultAssetImage;
  final BoxBorder? border;
  final EdgeInsetsGeometry? margin;
  final Widget? defaultWidget;

  const CachedNetworkImageWithDefault(
      {Key? key,
      required this.image,
      this.borderRadius,
      this.hasThump,
      this.border,
      this.defaultAssetImage,
      this.width,
      this.defaultWidget,
      this.margin,
      this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 25),
      child: Container(
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 25),
            border: border ?? Border.all(color: Colors.grey, width: 0.5)),
        height: height == -1 ? null : height ?? 30,
        width: width == -1 ? null : width ?? 30,
        child: image.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: (hasThump == false) || image.contains('width')
                    ? image
                    //TODO: Replace with thump format
                    : image.contains('m3dc')
                        ? ('$image?width=150')
                        : image,
                fit: BoxFit.cover,
                placeholder: (context, url) => const LoadingImage(),
                errorWidget: (context, url, __) =>
                    defaultWidget ??
                    Image.asset(
                        defaultAssetImage ?? 'assets/images/error_image.png'),
              )
            : defaultWidget ??
                Image.asset(
                    defaultAssetImage ?? 'assets/images/error_image.png'),
      ),
    );
  }
}
