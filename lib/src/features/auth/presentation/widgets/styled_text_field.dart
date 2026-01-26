import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StyledTextField extends StatelessWidget {
  const StyledTextField({
    super.key,
    required this.text,
    this.hintText,
    this.contents,
    this.onTap,
    this.obscureText = true,
  });

  final String text;
  final String? hintText;
  final Widget? contents;
  final VoidCallback? onTap;
  final bool obscureText;

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
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIconConstraints: BoxConstraints(
                minWidth: 24.r,
                minHeight: 24.r,
              ),
              suffixIcon: GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.only(right: 19.w),
                  child: SvgPicture.asset(
                    obscureText ? AppIcons.obscureTrue : AppIcons.obscureFalse,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
