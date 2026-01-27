import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const CustomSmoothPageIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        const double totalWidth = 200.0;
        final double sectionWidth = totalWidth / pageCount;
        return Center(
          child: Container(
            width: totalWidth,
            height: 10.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryFixed,
              borderRadius: BorderRadius.circular(10).r,
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  left: currentPage * sectionWidth,
                  child: Container(
                    width: sectionWidth,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(10).r,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
