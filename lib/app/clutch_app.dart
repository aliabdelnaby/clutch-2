import 'package:clutch/core/routes/app_router.dart';
import 'package:flutter/material.dart';

class Clutch extends StatelessWidget {
  const Clutch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
