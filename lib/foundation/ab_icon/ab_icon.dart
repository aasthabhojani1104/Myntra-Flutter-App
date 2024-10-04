import 'package:flutter/material.dart';

class AbIcon extends StatelessWidget {
  const AbIcon(
      {super.key,
       required this.assetname,
       this.index,
       this.currentIndex});
  final String assetname;
  final int? index;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetname,
      height: 25,
      width: 25,
      color: index==currentIndex?const Color(0xfffe416c):Colors.black,
    );
  }
}
