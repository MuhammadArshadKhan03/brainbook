import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/add_trespasser_details/add_trespasser_details_screen.dart';
import 'package:brainbook/screens/age_result/age_result_screen.dart';
import 'package:brainbook/screens/audio/audio_binding.dart';
import 'package:brainbook/screens/audio/audio_screen.dart';
import 'package:brainbook/screens/case_law_detail/law_case_detail_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_binding.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_binding.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_screen.dart';
import 'package:brainbook/screens/gang_slang_detail/gang_slang_detail_screen.dart';
import 'package:brainbook/screens/gladys_r_admonition/gladys_r_admonition_screen.dart';
import 'package:brainbook/screens/home/home_screen.dart';
import 'package:brainbook/screens/login/login_binding.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/new_password/new_password_binding.dart';
import 'package:brainbook/screens/new_password/new_password_screen.dart';
import 'package:brainbook/screens/password_update/password_update_screen.dart';
import 'package:brainbook/screens/sfts_more_option/sfta_more_option_screen.dart';
import 'package:brainbook/screens/signup/signup_binding.dart';
import 'package:brainbook/screens/signup/signup_screen.dart';
import 'package:brainbook/screens/splash/splash_screen.dart';
import 'package:brainbook/screens/translator/translator_screen.dart';
import 'package:brainbook/screens/trespasser_apb_details/trespasser_apb_details_screen.dart';
import 'package:brainbook/screens/verification_code/verification_code_binding.dart';
import 'package:brainbook/screens/verification_code/verification_code_screen.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';



class AppPages{

  static final pages = [
    GetPage(name: Routes.splashScreen, page: ()=> const SplashScreen(),),
    GetPage(name: Routes.welcomeScreen, page: ()=> const WelcomeScreen(),),
    GetPage(name: Routes.loginScreen, page: ()=>  LoginScreen(),binding:LoginBinding() ),
    GetPage(name: Routes.signupScreen, page: ()=>  SignUp(),binding:SignUpBinding() ),
    GetPage(name: Routes.forgotPasswordScreen, page: ()=>  ForgotPassword(),binding:ForgotPasswordBinding() ),
    GetPage(name: Routes.verificationCodeScreen, page: ()=>  VerificationCode(), binding:VerficationBinding()),
    GetPage(name: Routes.newPasswordScreen, page: ()=>  NewPassword(), binding:NewPasswordBinding()),
    GetPage(name: Routes.passwordUpdateScreen, page: ()=>  PasswordUpdate(),),
    GetPage(name: Routes.dashBoardScreen, page: ()=>  DashBoard(),binding: DashBoardBinding()),
    GetPage(name: Routes.homeScreen, page: ()=>  Home(),),
    GetPage(name: Routes.translatorScreen, page: ()=>  TranslatorScreen(),),
    GetPage(name: Routes.audioScreen, page: ()=>  AudioScreen(),binding: AudioBinding()),
    GetPage(name: Routes.ageResultScreen, page: ()=>  AgeResultScreen(),),
    GetPage(name: Routes.gangSlangDetailScreen, page: ()=>  GangSlangDetailScreen(),),
    GetPage(name: Routes.nHTSAManualScreen, page: ()=>  SFTAMoreOptionScreen(),),
    GetPage(name: Routes.lawCaseDetailScreen, page: ()=>  CaseLawDetailScreen(),),
    GetPage(name: Routes.gladysRAdmonitionScreen, page: ()=>  GladysRAdmonitionScreen(),),
    GetPage(name: Routes.trespasserApbDetailsScreen, page: ()=>  TrespasserApbDetailsScreen(),),
    GetPage(name: Routes.addTrespasserDetailsScreen, page: ()=>  AddTrespasserDetailsScreen(),),
   // GetPage(name: Routes.warrantsScreen, page: ()=>  Warrants(),),
  ];
}