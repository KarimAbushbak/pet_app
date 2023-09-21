



import 'package:flutter/material.dart';

import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();




}

// initSplash() {
//   // Get.put<SplashController>(SplashController());
// }
//
// disposeSplash() {
//   Get.delete<SplashController>();
// }
//
// initAuth() {
//   disposeSplash();
//   Get.put<AuthController>(AuthController());
// }
//
// disposeAuth() {
//   Get.delete<AuthController>();
// }
//
// initHome() {
//   disposeSplash();
//   disposeAuth();
//   initProductDetails();
//
//   Get.put<HomeController>(HomeController());
// }
//
// disposeHome() {}
//
// initProductDetails() {
//   if (!GetIt.I.isRegistered<ProductDetailsRemoteDataSource>()) {
//     instance.registerLazySingleton<ProductDetailsRemoteDataSource>(
//       () => ProductDetailsRemoteDataSourceImplementation(
//         instance<AppApi>(),
//       ),
//     );
//   }
//
//   if (!GetIt.I.isRegistered<ProductDetailsRepository>()) {
//     instance.registerLazySingleton<ProductDetailsRepository>(
//       () => ProductDetailsRepositoryImplementation(
//         data: instance(),
//         networkInfo: instance(),
//       ),
//     );
//   }
//
//   if (!GetIt.I.isRegistered<ProductDetailsUseCaseImplementation>()) {
//     instance.registerLazySingleton<ProductDetailsUseCaseImplementation>(
//       () => ProductDetailsUseCaseImplementation(
//         instance(),
//       ),
//     );
//   }
// }
//
// disposeProductDetails() {}
//
// initLocale(){
//   Get.put<LocaleNotifierController>(LocaleNotifierController());
// }