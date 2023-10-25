import 'package:flutter/material.dart';

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
        border: Border.all(color: Colors.black, )
      ),
      child: Center(child: Text(text)),
    );
  }
}
