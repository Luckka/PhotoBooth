import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/modules/login/login_module.dart';
import 'package:photo_booth/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;



  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute(AppRoutes.login, module: LoginModule())
  ];
}