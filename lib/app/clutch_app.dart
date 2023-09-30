import 'package:flutter/material.dart';

import '../core/routes/app_router.dart';

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
