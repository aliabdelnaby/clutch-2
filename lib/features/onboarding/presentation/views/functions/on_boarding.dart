import 'package:clutch/core/database/cache/cache_helper.dart';
import 'package:clutch/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isOnBoardingVisited', value: true);
}
