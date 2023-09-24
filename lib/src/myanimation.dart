//Todo --------------------- animation builder-------------------------
import 'dart:math';

import 'package:flutter/material.dart';

class MySelfAnimationBuilder {
  MySelfAnimationBuilder({required this.trueOrfalse});
  final bool trueOrfalse;

  Widget flipAnimation(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(trueOrfalse) != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }

  Widget flipAnimationUpAndDown(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(trueOrfalse) != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? rotateAnim.value : min(rotateAnim.value, pi / 2);
        return Transform(
          transform: Matrix4.rotationX(value)..setEntry(3, 0, tilt),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }
}
