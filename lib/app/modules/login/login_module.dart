import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/modules/login/presenter/pages/login_page.dart';

class LoginModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;


  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const LoginPage())
  ];
}