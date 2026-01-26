import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountTypeContent extends StatelessWidget {
  const AccountTypeContent({
    super.key,
    required this.tittle,
    required this.description,
    this.isAccountTypeSelected = false,
  });

  final String tittle, description;
  final bool isAccountTypeSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Text(
          tittle,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            color: isAccountTypeSelected
                ? theme.colorScheme.onSecondaryContainer
                : null,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          description,
          style: theme.textTheme.bodySmall?.copyWith(
            fontWeight: isAccountTypeSelected ? FontWeight.w600 : null,
            color: isAccountTypeSelected
                ? theme.colorScheme.onSecondaryContainer
                : null,
          ),
        ),
      ],
    );
  }
}
