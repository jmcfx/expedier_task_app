import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreferenceChip extends StatelessWidget {
  const PreferenceChip({
    super.key,
    required this.label,
    required this.horizontal,
    required this.isSelected,
    this.onTap,
  });

  final String label;
  final double horizontal;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? theme.colorScheme.primaryContainer
              : theme.colorScheme.secondaryContainer,
          border: BoxBorder.all(
            width: 0.5.r,
            color: theme.colorScheme.primaryContainer,
          ),
          borderRadius: BorderRadius.circular(40).r,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: horizontal),
          child: Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              fontSize: 12.sp,
              fontWeight: isSelected ? FontWeight.w600 : null,
              color: isSelected ? theme.colorScheme.onSecondaryContainer : null,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
