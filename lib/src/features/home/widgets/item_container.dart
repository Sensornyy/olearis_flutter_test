import 'package:flutter/material.dart';

import 'package:olearis_flutter_test/src/features/home/constants/home_ui_constants.dart';

class ItemContainer extends StatelessWidget {
  final String text;

  const ItemContainer({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: HomeUIConstants.itemTextFontSize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
