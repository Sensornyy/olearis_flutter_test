import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;
  final bool isOutlined;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const AppLogo({
    this.width,
    this.height,
    this.isOutlined = false,
    this.margin,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 375),
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      decoration: isOutlined
          ? BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        height: height,
        width: width,
      ),
    );
  }
}
