import 'package:flutter/widgets.dart';
import 'package:modern_shop_app/screens/sign_in/sing_in_screen.dart';
import 'package:modern_shop_app/screens/splash/splash_screen.dart';

// * Used for named routes all the routes will live here.
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
