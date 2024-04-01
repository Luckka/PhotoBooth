import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/modules/home/presenter/pages/home_page.dart';
import 'package:photo_booth/app/modules/home/presenter/pages/new_event_page.dart';

class HomeModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;



  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(AppRoutes.home, child: (args,context) => const HomePage()),
    ChildRoute(AppRoutes.newEvent, child: (args,context) => const NewEventPage())
  ];
}