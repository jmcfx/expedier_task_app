import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';

import 'package:expedier_task_app/src/core/constants/app_image.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/sub_tittle.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/tittle_text.dart';
import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/card_animate.dart';
import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/custom_shader_mask.dart';
import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/custom_skip.dart';
import 'package:expedier_task_app/src/features/onboarding/presentation/widgets/exchange_rate_animate.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';

import 'package:expedier_task_app/src/shared/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OnboardingPage extends HookWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final currentPage = useState(0);

    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //page View content...
          Flexible(
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    currentPage.value = value;
                  },
                  controller: controller,
                  physics: ClampingScrollPhysics(),
                  children: [
                    //onboarding1
                    Column(
                      children: [
                        CustomShaderMask(child: Image.asset(AppImage.onboard1)),
                        SizedBox(height: 53.h),
                        TittleText(
                          text:
                              "Experience effortless currency exchange and fast Transaction",
                        ),
                        SizedBox(height: 16.h),
                        SubTittle(
                          text:
                              "Seamlessly convert currencies at the best rates with quick and secure transactions",
                        ),
                      ],
                    ),
                    //onboarding2
                    Column(
                      children: [
                        CustomShaderMask(
                          child: Container(
                            color: theme.colorScheme.onPrimaryContainer,
                            child: Column(
                              children: [
                                SizedBox(height: 74.h),
                               CardsAnimation(),
                                 SizedBox(height: 50.h),

                              ],
                            ),
                          ),
                        ),
                         SizedBox(height: 53.h),
                        TittleText(text: "Card data security"),
                        SizedBox(height: 16.h),
                        SubTittle(
                          text:
                              "Experience peace of mind with our Secured and Trusted banking app.",
                        ),
                      ],
                    ),
                    //onboarding3
                    Padding(
                      padding: EdgeInsets.only(top: 110.h),
                      child: Column(
                        children: [
                          ExchangeRateAnimate(),
                          SizedBox(height: 312.h),
                          TittleText(text: "Exchange Money"),
                          SizedBox(height: 16.h),
                          SubTittle(
                            text:
                                "Enjoy excellent exchange rates for various currencies.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //skip...
                Positioned(
                  right: 17.w,
                  top: 63.h,
                  child: CustomSkip(
                    onTap: () {
                      context.router.push(LoginRoute());
                    },
                  ),
                ),
              ],
            ),
          ),
          CustomSmoothPageIndicator(
            currentPage: currentPage.value,
            pageCount: 3,
          ),
          SizedBox(height: 72.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.5.w,
            ).copyWith(bottom: 55.h),
            child: Column(
              children: [
                if (currentPage.value == 2)
                  Row(
                    children: [
                      Flexible(
                        child: AppButton(
                          onTap: () => context.router.push(const LoginRoute()),
                          text: "Log In",
                          fontColor: theme.colorScheme.primary,
                          horizontal: 0.w,
                          color: theme.scaffoldBackgroundColor,
                          border: Border.all(color: theme.primaryColor),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Flexible(
                        child: AppButton(
                          onTap: () => context.router.push(const SignUpRoute()),
                          text: "Sign Up",
                          horizontal: 0.w,
                        ),
                      ),
                    ],
                  )
                else
                  AppButton(
                    onTap: () {
                      if (currentPage.value < 2) {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    text: 'Next',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
