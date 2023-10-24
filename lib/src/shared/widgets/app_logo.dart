import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;
  final bool isOutlined;

  const AppLogo({
    this.width,
    this.height,
    this.isOutlined = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isOutlined ? EdgeInsets.symmetric(vertical: 10) : EdgeInsets.zero,
      decoration: isOutlined ? BoxDecoration(
        border: Border.all(
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(20)
      ) : null,
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        height: height,
        width: width,
      ),
    );
  }
}
