import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/location_row.dart';
import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/price_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceInfoBar extends StatelessWidget {
  const PriceInfoBar({
    super.key,
    required this.country,
    required this.countryImg,
    required this.positivePrice,
    required this.negativePrice,
    required this.positivePriceImage,
    required this.negativePriceImg,
  });
  final String country,
      countryImg,
      positivePrice,
      negativePrice,
      positivePriceImage,
      negativePriceImg;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.5.w),

      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 21.w,
      ).copyWith(right: 30.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
            color: theme.colorScheme.secondary,
          ),
        ],
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(width: 1.2.r, color: theme.colorScheme.secondary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //location ...
          LocationRow(text: country, image: countryImg),
          //price....
          PriceRow(text: negativePrice, image: negativePriceImg),
          PriceRow(text: positivePrice, image: positivePriceImage),
        ],
      ),
    );
  }
}
