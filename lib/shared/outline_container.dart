import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineContainer extends StatelessWidget {
  const OutlineContainer({
    super.key,
    this.child,
    this.onTap,
    this.isSelected = false,
  });

  final Widget? child;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.blue
              : theme.colorScheme.onSecondaryContainer,
          borderRadius: BorderRadius.circular(15).r,
          border: Border.all(
            width: 1.r,
            color: theme.colorScheme.primaryContainer,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h).copyWith(left: 24.w),
        child: child,
      ),
    );
  }
}
