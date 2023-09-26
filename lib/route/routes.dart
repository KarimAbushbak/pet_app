
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/config/dependancy_injection.dart';
import 'package:pet_app/features/auth/presntation/view/authentication_view.dart';

import '../features/splash/presntation/view/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingScreen = '/out_boarding_screen';
  static const String authenticationView = '/authenticationView';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String homeView = '/HomeView';
  static const String itemDetails = '/ItemDetails';
  static const String profileView= '/ProfileView';
  static const String language = '/language';
}
class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashScreen :
        initSplash();
        return MaterialPageRoute(builder: (_)=>SplashScreen());
      case Routes.authenticationView :
        return MaterialPageRoute(builder: (_)=>AuthenticationView());
      default:
        return MaterialPageRoute(builder: (_)=>Undefined());

    }
  }


  }
  class Undefined extends StatelessWidget {
    const Undefined({super.key});

    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: Text("gfd"),
      );
    }
  }




