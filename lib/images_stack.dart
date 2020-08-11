import 'package:flutter/material.dart';
import 'package:ui_challenge2/custom_extensions.dart';

class ProfilePics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        circularProfileImg(imgno: 3, pos: 120),
        circularProfileImg(imgno: 63, pos: 90),
        circularProfileImg(imgno: 53, pos: 60),
        circularProfileImg(imgno: 59, pos: 30),
        circularProfileImg(imgno: 43),
      ],
    );
  }
}

circularProfileImg({@required int imgno, double pos}) {
  return Positioned(
    right: pos,
    child: Container(
      width: 40,
      height: 40,
      child: Image.network(
        "https://i.pravatar.cc/150?img=$imgno",
        width: 70,
      ),
    ).borderRadius(BorderRadius.circular(100)),
  );
}
