import 'package:fluro/fluro.dart';
import 'package:responsive_app/router/auth_handlers.dart';
import 'package:responsive_app/router/landing_Page_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/register';
  static String landingPageRoute = '/:page';

  static void configureRoutes(){
    
    // Rutas
    router.define(landingPageRoute, handler: LandingPageHandlers.landingPage );
    router.define(loginRoute, handler: AuthHandlers.login);
    // router.define(registerRoute, handler: authHandler);

    // 404
    router.notFoundHandler = LandingPageHandlers.landingPage;
  }
}