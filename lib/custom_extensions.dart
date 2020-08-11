import 'dart:ui';
import 'package:flutter/material.dart';

//extesion on text (String)
extension TextExtension on String {
  makeTextH1({Color color = const Color(0xffDA3564), bool centered = false}) {
    return Text(
      this,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 25,
        fontFamily: 'SF Mono',
      ),
    );
  }
}

// extensions
//
extension WidgetModifier on Widget {
  // all extensions here
  Widget padding([EdgeInsetsGeometry value = const EdgeInsets.all(20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }

  //
  Widget position({double top, double bottom, double left, double right}) {
    return Positioned(
      child: this,
      top: top,
      bottom: bottom,
      right: right,
      left: left,
    );
  }

  //
  Widget borderRadius(BorderRadiusGeometry radius) {
    return ClipRRect(
      borderRadius: radius,
      child: this,
    );
  }

  //
  Widget align(Alignment alignment) {
    return Align(
      child: this,
      alignment: alignment,
    );
  }

  //
  Widget hero(String tag) {
    return Hero(
      tag: tag,
      child: this,
    );
  }

  //
  Widget centered() {
    return Center(
      child: this,
    );
  }
  //

  //
  Widget frosted({double sigX, double sigY, BorderRadiusGeometry radius}) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigX ?? 15,
          sigmaY: sigY ?? 15,
        ),
        child: this,
      ),
    );
  }
  //

  Widget text(String text) {
    return Text(text);
  }
//

}
