import 'package:flutter/material.dart';

class CustomScrollBar extends StatelessWidget {
  final Widget child;

  const CustomScrollBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      thickness: 3,
      radius: const Radius.circular(8),
      child: child,
    );
  }
}
