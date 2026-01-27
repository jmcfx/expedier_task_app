import 'dart:math' as math;

import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/core/constants/app_image.dart';
import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/price_info_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExchangeRate extends StatefulWidget {
  const ExchangeRate({super.key});

  @override
  State<ExchangeRate> createState() => _ExchangeRateState();
}

class _ExchangeRateState extends State<ExchangeRate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,

        children: [
          // TOP
          Transform.rotate(
            angle: Tween<double>(begin: 0, end: -math.pi / 40)
                .animate(
                  CurvedAnimation(parent: _controller, curve: Curves.bounceOut),
                )
                .value,
            child: PriceInfoBar(
              country: 'CAD',
              countryImg: AppImage.cad,
              negativePrice: '76,36',
              positivePrice: '76,36',
              negativePriceImg: AppIcons.arrowDown,
              positivePriceImage: AppIcons.arrowUp,
            ),
          ),

          // BOTTOM
          Positioned(
            top: 188.h,
            left: 0,
            right: 0,
            child: Transform.rotate(
              angle: Tween<double>(begin: 0, end: -math.pi / 40)
                  .animate(
                    CurvedAnimation(
                      parent: _controller,
                      curve: Curves.bounceOut,
                    ),
                  )
                  .value,
              child: PriceInfoBar(
                country: 'USD',
                countryImg: AppImage.usd,
                negativePrice: '76,36',
                positivePrice: '76,36',
                negativePriceImg: AppIcons.arrowDown,
                positivePriceImage: AppIcons.arrowUp,
              ),
            ),
          ),

          // MIDDLE
          Positioned(
            top: 94.h,
            left: 0,
            right: 0,
            child: Transform.rotate(
              angle: Tween<double>(begin: 0, end: math.pi / 20)
                  .animate(
                    CurvedAnimation(
                      parent: _controller,
                      curve: Curves.bounceOut,
                    ),
                  )
                  .value,
              child: PriceInfoBar(
                country: 'NGN',
                countryImg: AppImage.ngn,
                negativePrice: '76,36',
                positivePrice: '76,36',
                negativePriceImg: AppIcons.arrowDown,
                positivePriceImage: AppIcons.arrowUp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
