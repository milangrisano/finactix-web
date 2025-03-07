import 'package:fluro/fluro.dart';
import 'package:responsive_app/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static String login = '/login';
  static String landingPage = '/:page';

  static void configureRoutes(){
    
    // Rutas
    router.define(landingPage, handler: homeHandler );
    router.define(login, handler: loginHandler);

    // 404
    router.notFoundHandler = homeHandler;
  }
}