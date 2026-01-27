import 'package:expedier_task_app/src/core/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mobile Number', style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 12.h),

        Container(
          height: 56.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F6F8),
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: Colors.blue, width: 1.5),
          ),
          child: Row(
            children: [
              /// Flag + code
              Row(
                children: [
                  Image.asset(AppImage.ngn, width: 24.r),
                  SizedBox(width: 8.w),
                  Text('(+234)', style: Theme.of(context).textTheme.bodySmall),
                ],
              ),

              /// Vertical divider
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  width: 1.w,
                  height: 30.h,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),

              /// Phone input
              Flexible(
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.justify,
                  decoration: const InputDecoration(
                    hintText: 'Enter Phone number',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    isCollapsed: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
