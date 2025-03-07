import 'package:fluro/fluro.dart';
import 'package:responsive_app/ui/view/login_view.dart';

class AuthHandlers {
  static Handler login = Handler(handlerFunc: (context, params) {
    return const LoginView();
  });
}
