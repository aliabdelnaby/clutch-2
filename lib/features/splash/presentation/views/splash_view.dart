import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(seconds: 2), vsync: this);
    _controller.forward();
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      delayedNavigate(context, "/signupoptions");
    } else {
      delayedNavigate(context, "/onboarding");
    }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Center(
            child: RotationTransition(
              alignment: Alignment.center,
              turns: Tween(begin: 0.0, end: -1.0).animate(_controller),
              child: SvgPicture.asset(
                Assets.assetsImagesLoading,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Center(
            child: SvgPicture.asset(
              Assets.assetsImagesClutchLogo,
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(
    const Duration(seconds: 3),
    () {
      customReplacementNavigate(context, path);
    },
  );
}
