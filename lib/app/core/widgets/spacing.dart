// Essenciais
import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double? width;
  final double? height;
  const Spacing({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }
}
