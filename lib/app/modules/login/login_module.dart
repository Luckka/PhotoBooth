import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/modules/login/presenter/pages/login_page.dart';
import 'package:photo_booth/app/modules/login/presenter/pages/sign_up_page.dart';
import 'package:photo_booth/app/modules/login/presenter/services/auth_service.dart';

class LoginModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
    Bind.lazySingleton((i) => Auth())
  ];


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const LoginPage()),
 
  ];
}