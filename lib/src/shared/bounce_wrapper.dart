import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BounceWrapper extends HookWidget {
  const BounceWrapper({
    super.key,
    required this.child,
    this.onTap,
    this.scaleFactor = 0.95,
    this.duration = const Duration(milliseconds: 100),
  });

  final Widget child;
  final VoidCallback? onTap;
  final double scaleFactor;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: duration);
    
    final scaleAnimation = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: scaleFactor,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.bounceIn,
        ),
      ),
      [controller, scaleFactor],
    );

    void onTapDown(TapDownDetails details) {
      controller.forward();
    }

    void onTapUp(TapUpDetails details) {
      controller.reverse();
      onTap?.call();
    }

    void onTapCancel() {
      controller.reverse();
    }

    return GestureDetector(
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: child,
      ),
    );
  }
}