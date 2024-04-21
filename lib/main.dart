import 'package:easy_localization/easy_localization.dart';
import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('ar', 'AE')],
      fallbackLocale: const Locale('ar', 'AE'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key? c});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
    );
  }
}
