import 'package:flutter/material.dart';

import 'package:olearis_flutter_test/src/shared/constants/ui_constants.dart';

class CustomScrollbar extends StatelessWidget {
  final Widget child;

  const CustomScrollbar({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      thickness: UIConstants.scrollbarThickness,
      radius: const Radius.circular(UIConstants.scrollbarRadius),
      child: child,
    );
  }
}
