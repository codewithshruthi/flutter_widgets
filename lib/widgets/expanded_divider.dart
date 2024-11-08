import 'package:flutter/material.dart';

class ExpandedDivider extends StatelessWidget {
  const ExpandedDivider({
    super.key,
    this.thickness,
  });
  final double? thickness;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Divider(
      thickness: thickness,
    ));
  }
}
