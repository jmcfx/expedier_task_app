import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      RouteType.custom(transitionsBuilder: TransitionsBuilders.noTransition);

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: SelfieVerificationRoute.page),
    AutoRoute(page: VerificationSuccessRoute.page),
    AutoRoute(page: EmailConfirmationRoute.page),
    AutoRoute(page: UserCredentialsRoute.page),
    AutoRoute(page: OtpRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: UserAccountTypeRoute.page),
    AutoRoute(page: UserPreferencesRoute.page),
  ];
}
