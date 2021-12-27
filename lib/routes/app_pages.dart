import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/login/binding.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/splash/widgets/splash_screen.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AppPages{

  static final pages = [
    GetPage(name: Routes.splashScreen, page: ()=> const SplashScreen(),),
    GetPage(name: Routes.welcomeScreen, page: ()=> const WelcomeScreen(),),
    GetPage(name: Routes.loginScreen, page: ()=>  LoginScreen(),binding:LoginBinding() ),
  ];
}