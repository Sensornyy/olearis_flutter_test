import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:olearis_flutter_test/src/shared/constants/ui_constants.dart';

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
      constraints: const BoxConstraints(maxWidth: UIConstants.logoMaxWidth),
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      decoration: isOutlined
          ? BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(UIConstants.logoRadius),
            )
          : null,
      child: SvgPicture.asset(
        UIConstants.logoPath,
        height: height,
        width: width,
      ),
    );
  }
}
