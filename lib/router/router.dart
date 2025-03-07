import 'package:fluro/fluro.dart';
import 'package:responsive_app/router/auth_handlers.dart';
import 'package:responsive_app/router/home_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/register';
  static String landingPageRoute = '/:page';

  static void configureRoutes(){
    
    // Rutas
    router.define(landingPageRoute, handler: homeHandler );
    router.define(loginRoute, handler: AuthHandlers.login);
    // router.define(registerRoute, handler: authHandler);

    // 404
    router.notFoundHandler = homeHandler;
  }
}