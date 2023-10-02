import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/add_car/views/add_your_car_view.dart';
import '../../features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import '../../features/auth/presentation/views/forgot_password_view.dart';
import '../../features/auth/presentation/views/login_view_email.dart';
import '../../features/auth/presentation/views/sign_up_options.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/auth/presentation/views/verification_code.dart';
import '../../features/auth/presentation/widgets/terms_and_condition/terms_and_condition_body.dart';
import '../../features/home/presentation/views/home_page.dart';
import '../../features/onboarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
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
            create: (context) => AuthCubit(),
            child: const LoginViewWithEmail(),
          )),
    ),
    GoRoute(
      path: '/forgotpasswordview',
      builder: ((context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const ForgotPasswordView(),
          )),
    ),
    GoRoute(
      path: '/signupview',
      builder: ((context, state) => BlocProvider(
            create: (context) => AuthCubit(),
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
    GoRoute(
      path: '/verificationCodePage',
      builder: ((context, state) => const VerificationCodePage()),
    ),
    GoRoute(
      path: '/addYouCarView',
      builder: ((context, state) => const AddYouCarView()),
    ),
  ],
);
