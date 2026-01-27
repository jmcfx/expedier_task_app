import 'package:expedier_task_app/src/core/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsAnimation extends StatefulWidget {
  const CardsAnimation({super.key});

  @override
  State<CardsAnimation> createState() => _CardsAnimationState();
}

class _CardsAnimationState extends State<CardsAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _topCardOffset;
  late Animation<double> _shadowOpacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    final double stackedSpacing = 12.r;
    final double liftedSpacing = 36.r;

    _topCardOffset = Tween<double>(
      begin: -stackedSpacing,
      end: -liftedSpacing,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _shadowOpacity = Tween<double>(begin: 0, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0, 0)),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, _) {
        return Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Image.asset(AppImage.lastCard),
            Positioned(
              top: 45.h,
              left: 0,
              right: 0,
              child: Transform.translate(
                offset: Offset(0, _topCardOffset.value),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(
                          alpha: _shadowOpacity.value,
                        ),
                        blurRadius: 13,
                        spreadRadius: 0,
                        offset: const Offset(2, 23),
                      ),
                    ],
                  ),
                  child: Image.asset(AppImage.card),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
