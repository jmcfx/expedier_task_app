import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSwitchText extends StatelessWidget {
  const AccountSwitchText({
    super.key,
    required this.description,
    required this.text,
    this.onTap,
  });
  final String description, text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12.w,
        children: [
          Text(description, style: theme.textTheme.bodySmall),
          Text(
            text,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
