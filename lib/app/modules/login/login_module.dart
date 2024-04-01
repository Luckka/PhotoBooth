

import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/modules/home/presenter/pages/home_page.dart';
import 'package:photo_booth/app/modules/login/presenter/bloc/photo_booth_bloc.dart';
import 'package:photo_booth/app/modules/login/presenter/pages/login_page.dart';
import 'package:photo_booth/app/modules/login/presenter/pages/sign_up_page.dart';
import 'package:photo_booth/app/modules/login/presenter/services/auth_service.dart';

class LoginModule extends Module{
  @override
  List<Bind<Object>> get binds => [
    Bind.lazySingleton((i) => Auth()),
    Bind.lazySingleton((i) => PhotoBoothBloc())
  ];


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) =>  LoginPage(bloc: Modular.get<PhotoBoothBloc>(),)),
    ChildRoute(AppRoutes.home, child: (context,args) => const HomePage())
 
  ];
}