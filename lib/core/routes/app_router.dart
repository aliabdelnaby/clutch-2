import 'package:clutch/core/services/service_locator.dart';
import 'package:clutch/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:clutch/features/auth/presentation/views/forgot_password_view.dart';
import 'package:clutch/features/auth/presentation/views/login_view_email.dart';
import 'package:clutch/features/auth/presentation/views/sign_up_options.dart';
import 'package:clutch/features/auth/presentation/views/sign_up_view.dart';
import 'package:clutch/features/auth/presentation/widgets/terms_and_condition_body.dart';
import 'package:clutch/features/home/presentation/views/home_page.dart';
import 'package:clutch/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:clutch/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: ((context, state) => const SplashView()),
  ),
  GoRoute(
    path: '/onboarding',
    builder: ((context, state) => const OnBoardingView()),
  ),
  GoRoute(
    path: '/signupoptions',
    builder: ((context, state) => const SignUpOptions()),
  ),
  GoRoute(
    path: '/loginviewwithemail',
    builder: ((context, state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const LoginViewWithEmail(),
        )),
  ),
  GoRoute(
    path: '/forgotpasswordview',
    builder: ((context, state) => const ForgotPasswordView()),
  ),
  GoRoute(
    path: '/signupview',
    builder: ((context, state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const SignUpView(),
        )),
  ),
  GoRoute(
    path: '/homepage',
    builder: ((context, state) => const HomePage()),
  ),
    GoRoute(
    path: '/termsAndConditionBody',
    builder: ((context, state) => const TermsAndConditionBody()),
  ),
]);
