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
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  /// Preload images safely (context is available here)
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(AssetImage(AppImage.onboard1), context);
    precacheImage(AssetImage(AppImage.card), context);
    precacheImage(AssetImage(AppImage.lastCard), context);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  physics: const ClampingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() => _currentPage = value);
                  },
                  children: [
                    /// Onboarding 1
                    Column(
                      children: [
                        CustomShaderMask(child: Image.asset(AppImage.onboard1)),
                        SizedBox(height: 53.h),
                        const TittleText(
                          text:
                              "Experience effortless currency exchange and fast Transaction",
                        ),
                        SizedBox(height: 16.h),
                        const SubTittle(
                          text:
                              "Seamlessly convert currencies at the best rates with quick and secure transactions",
                        ),
                      ],
                    ),

                    /// Onboarding 2
                    Column(
                      children: [
                        CustomShaderMask(
                          child: Container(
                            color: theme.colorScheme.onPrimaryContainer,
                            child: Column(
                              children: [
                                SizedBox(height: 74.h),
                                const CardsAnimation(),
                                SizedBox(height: 50.h),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 53.h),
                        const TittleText(text: "Card data security"),
                        SizedBox(height: 16.h),
                        const SubTittle(
                          text:
                              "Experience peace of mind with our Secured and Trusted banking app.",
                        ),
                      ],
                    ),

                    /// Onboarding 3
                    Padding(
                      padding: EdgeInsets.only(top: 110.h),
                      child: Column(
                        children: [
                          const ExchangeRateAnimate(),
                          SizedBox(height: 312.h),
                          const TittleText(text: "Exchange Money"),
                          SizedBox(height: 16.h),
                          const SubTittle(
                            text:
                                "Enjoy excellent exchange rates for various currencies.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /// Skip button
                Positioned(
                  right: 17.w,
                  top: 63.h,
                  child: CustomSkip(
                    onTap: () {
                      context.router.push(const LoginRoute());
                    },
                  ),
                ),
              ],
            ),
          ),

          /// Page indicator
          CustomSmoothPageIndicator(currentPage: _currentPage, pageCount: 3),

          SizedBox(height: 72.h),

          /// Bottom buttons
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.5.w,
            ).copyWith(bottom: 55.h),
            child: _currentPage == 2
                ? Row(
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
                : AppButton(
                    text: 'Next',
                    onTap: () {
                      if (_currentPage < 2) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
