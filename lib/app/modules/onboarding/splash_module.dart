import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/modules/onboarding/presenter/pages/onboarding_page.dart';

import 'package:photo_booth/app/modules/onboarding/presenter/pages/splash_page.dart';

class SplashModule extends Module{
  @override
  List<Bind<Object>> get binds => [];


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const SplashPage()),
    ChildRoute(AppRoutes.onboarding, child: (context,args) => const OnboardingPage())
   
  ];
}