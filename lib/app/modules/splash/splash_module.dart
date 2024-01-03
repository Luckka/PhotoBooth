import 'package:flutter_modular/flutter_modular.dart';

import 'package:photo_booth/app/modules/splash/presenter/pages/splash_page.dart';

class SplashModule extends Module{
  @override
  List<Bind<Object>> get binds => [];


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const SplashPage()),
   
  ];
}