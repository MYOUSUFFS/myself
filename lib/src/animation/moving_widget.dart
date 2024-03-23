import 'package:flutter/material.dart';

class MyMovingWidget extends StatefulWidget {
  const MyMovingWidget({
    super.key,
    required this.child,
    this.begin = Offset.zero,
    this.end = const Offset(0, -0.9),
    this.duration,
  });
  final Widget child;
  final Offset? begin;
  final Offset? end;
  final Duration? duration;

  @override
  State<MyMovingWidget> createState() => _MyMovingWidgetState();
}

class _MyMovingWidgetState extends State<MyMovingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat(reverse: true);

    _offsetAnimation = Tween<Offset>(
      begin: widget.begin,
      end: widget.end, // Adjust for desired movement distance
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.child,
    );
  }
}
