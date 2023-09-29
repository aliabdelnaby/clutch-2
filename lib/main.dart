import 'package:clutch/app/clutch_app.dart';
import 'package:clutch/core/database/cache/cache_helper.dart';
import 'package:clutch/core/functions/check_state_changes.dart';
import 'package:clutch/core/services/service_locator.dart';
import 'package:clutch/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const Clutch());
}
