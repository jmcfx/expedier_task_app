import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StyledTextField extends StatelessWidget {
  const StyledTextField({
    super.key,
    required this.text,
    this.hintText,
    this.contents,
  });

  final String text;
  final String? hintText;
  final Widget? contents;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          text,
          style: theme.textTheme.titleSmall!.copyWith(
            fontSize: 14.sp,
            color: theme.textTheme.titleMedium?.color,
          ),
        ),
        if (contents != null)
          contents!
        else ...[
          SizedBox(height: 12.h),
          TextFormField(decoration: InputDecoration(hintText: hintText)),
        ],
      ],
    );
  }
}
