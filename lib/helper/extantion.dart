import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension StringExtensions on String {
  Color hexToColor() {
    return new Color(int.parse(this.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

extension WidgetExtension on Widget {
  Widget get obx {
    return Obx(() => this);
  }

  Widget alignTo(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget onClick(_onClick, {onTouch, bool showEffect = false}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: showEffect ? new CircleBorder() : null,
        splashColor: showEffect ? Colors.lightGreen : null,
        onTapDown: (tapDownDetail) {
          if (onTouch != null) onTouch();
        },
        onTap: _onClick,
        child: this,
      ),
    );
  }
}
