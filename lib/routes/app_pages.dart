import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/Ist_amd_provokers/Ist_amd_provokers_screen.dart';
import 'package:brainbook/screens/Ist_amd_provokers/lst_amd_provokers_binding.dart';
import 'package:brainbook/screens/add_response/add_response_binding.dart';
import 'package:brainbook/screens/add_response/add_response_screen.dart';
import 'package:brainbook/screens/age_calculation/age_calculation_binding.dart';
import 'package:brainbook/screens/age_calculation/age_calculation_screen.dart';
import 'package:brainbook/screens/age_result/age_result_binding.dart';
import 'package:brainbook/screens/age_result/age_result_screen.dart';
import 'package:brainbook/screens/ask_a_cop/ask_a_cop_screen.dart';
import 'package:brainbook/screens/ask_question/ask_question_binding.dart';
import 'package:brainbook/screens/ask_question/ask_question_screen.dart';
import 'package:brainbook/screens/audio/audio_binding.dart';
import 'package:brainbook/screens/audio/audio_screen.dart';
import 'package:brainbook/screens/case_law/case_law_binding.dart';
import 'package:brainbook/screens/case_law/case_law_screen.dart';
import 'package:brainbook/screens/case_law_detail/case_law_detail_binding.dart';
import 'package:brainbook/screens/case_law_detail/case_law_detail_screen.dart';
import 'package:brainbook/screens/common_phrases/common_phrase_screen.dart';
import 'package:brainbook/screens/common_phrases/common_phrases_binding.dart';
import 'package:brainbook/screens/dash_board/dash_board_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_binding.dart';
import 'package:brainbook/screens/dead_checklist/dead_checklist_binding.dart';
import 'package:brainbook/screens/dead_checklist/dead_checklist_screen.dart';
import 'package:brainbook/screens/drugs_related/drugs_related_binding.dart';
import 'package:brainbook/screens/drugs_related/drugs_related_screen.dart';
import 'package:brainbook/screens/exigent_circumstances/exigent_circumstances_binding.dart';
import 'package:brainbook/screens/exigent_circumstances/exigent_circumstances_screen.dart';
import 'package:brainbook/screens/farorites/favorites_screen.dart';
import 'package:brainbook/screens/federal_codes/federal_code_binding.dart';
import 'package:brainbook/screens/federal_codes/federal_code_screen.dart';
import 'package:brainbook/screens/flash_card_add_details/flash_card_add_detail_binding.dart';
import 'package:brainbook/screens/flash_card_add_details/flash_card_add_details_screen.dart';
import 'package:brainbook/screens/flash_cards/flash_cards_binding.dart';
import 'package:brainbook/screens/flash_cards/flash_cards_screen.dart';
import 'package:brainbook/screens/flash_cards_list/flash_card_list_binding.dart';
import 'package:brainbook/screens/flash_cards_list/flash_cards_list_screen.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_binding.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_screen.dart';
import 'package:brainbook/screens/front_plates/front_plates_binding.dart';
import 'package:brainbook/screens/front_plates/front_plates_screen.dart';
import 'package:brainbook/screens/gang_slang/gang_slang_binding.dart';
import 'package:brainbook/screens/gang_slang/gang_slang_screen.dart';
import 'package:brainbook/screens/gang_slang_detail/gang_slang_detail_binding.dart';
import 'package:brainbook/screens/gang_slang_detail/gang_slang_detail_screen.dart';
import 'package:brainbook/screens/gladys_marsy/gladys_marsy_binding.dart';
import 'package:brainbook/screens/gladys_marsy/gladys_marsy_screen.dart';
import 'package:brainbook/screens/gladys_r_admonition/gladys_admonition_binding.dart';
import 'package:brainbook/screens/gladys_r_admonition/gladys_r_admonition_screen.dart';
import 'package:brainbook/screens/home/home_screen.dart';
import 'package:brainbook/screens/important_information/important_info_binding.dart';
import 'package:brainbook/screens/important_information/important_information_screen.dart';
import 'package:brainbook/screens/keys_to_castle/keys_to_castle_binding.dart';
import 'package:brainbook/screens/keys_to_castle/keys_to_castle_screen.dart';
import 'package:brainbook/screens/less_lethal/less_lethal_binding.dart';
import 'package:brainbook/screens/less_lethal/less_lethal_screen.dart';
import 'package:brainbook/screens/location_add_details/location_add_detail_binding.dart';
import 'package:brainbook/screens/location_add_details/location_add_details_screen.dart';
import 'package:brainbook/screens/location_more_information/location_more_info_binding.dart';
import 'package:brainbook/screens/location_more_information/location_more_information_screen.dart';
import 'package:brainbook/screens/locations/location_binding.dart';
import 'package:brainbook/screens/locations/location_screen.dart';
import 'package:brainbook/screens/login/login_binding.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/marsys_law/marsys_law_binding.dart';
import 'package:brainbook/screens/marsys_law/marsys_law_screen.dart';
import 'package:brainbook/screens/miranda/miranda_binding.dart';
import 'package:brainbook/screens/miranda/miranda_screen.dart';
import 'package:brainbook/screens/more/more_screen.dart';
import 'package:brainbook/screens/new_password/new_password_binding.dart';
import 'package:brainbook/screens/new_password/new_password_screen.dart';
import 'package:brainbook/screens/notebook/notebook_screen.dart';
import 'package:brainbook/screens/password_update/password_update_screen.dart';
import 'package:brainbook/screens/pat_tracker_list/pat_tracker_list_binding.dart';
import 'package:brainbook/screens/pat_tracker_list/pat_tracker_list_screen.dart';
import 'package:brainbook/screens/profile/profile_binding.dart';
import 'package:brainbook/screens/profile/profile_screen.dart';
import 'package:brainbook/screens/pta_tracker_add_details/pat_tracker_add_detail_binding.dart';
import 'package:brainbook/screens/pta_tracker_add_details/pta_tracker_add_details_screen.dart';
import 'package:brainbook/screens/pta_tracker_detail/pta_tracker_detail_binding.dart';
import 'package:brainbook/screens/pta_tracker_detail/pta_tracker_detail_screen.dart';
import 'package:brainbook/screens/recruits_studying/recruits_studying.dart';
import 'package:brainbook/screens/recruits_studying/recruits_studying_screen.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_binding.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_screen.dart';
import 'package:brainbook/screens/response/response_binding.dart';
import 'package:brainbook/screens/response/response_screen.dart';
import 'package:brainbook/screens/retirement_tools/retirement_tools_binding.dart';
import 'package:brainbook/screens/retirement_tools/retirement_tools_screen.dart';
import 'package:brainbook/screens/settings/settings_binding.dart';
import 'package:brainbook/screens/settings/settings_screen.dart';
import 'package:brainbook/screens/settings_location/settings_location_binding.dart';
import 'package:brainbook/screens/settings_location/settings_location_screen.dart';
import 'package:brainbook/screens/sfst_more_option/sfst_more_option_binding.dart';
import 'package:brainbook/screens/sfst_more_option/sfta_more_option_screen.dart';
import 'package:brainbook/screens/signup/signup_binding.dart';
import 'package:brainbook/screens/signup/signup_screen.dart';
import 'package:brainbook/screens/splash/splash_screen.dart';
import 'package:brainbook/screens/standardized_fsts/standardized_fsts_binding.dart';
import 'package:brainbook/screens/standardized_fsts/standardized_fsts_controller.dart';
import 'package:brainbook/screens/standardized_fsts/standardized_fsts_screen.dart';
import 'package:brainbook/screens/subscribe/subscribe_binding.dart';
import 'package:brainbook/screens/subscribe/subscribe_screen.dart';
import 'package:brainbook/screens/subscription_survey/subscription_survey_binding.dart';
import 'package:brainbook/screens/subscription_survey/subscription_survey_screen.dart';
import 'package:brainbook/screens/switch_state/switch_state_binding.dart';
import 'package:brainbook/screens/switch_state/switch_state_screen.dart';
import 'package:brainbook/screens/switch_state_change/switch_state_change_binding.dart';
import 'package:brainbook/screens/switch_state_change/switch_state_change_screen.dart';
import 'package:brainbook/screens/testifying_tips/testifying_binding.dart';
import 'package:brainbook/screens/testifying_tips/testifying_tips_screen.dart';
import 'package:brainbook/screens/traffic_code/traffic_code_binding.dart';
import 'package:brainbook/screens/traffic_code/traffic_screen.dart';
import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_detail_binding.dart';
import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_details_screen.dart';
import 'package:brainbook/screens/trafic_investigation/traffic_investigation_binding.dart';
import 'package:brainbook/screens/trafic_investigation/trafic_investigation_screen.dart';
import 'package:brainbook/screens/translator/translator_screen.dart';
import 'package:brainbook/screens/translator/trasnlator_binding.dart';
import 'package:brainbook/screens/trespasser_add_details/trespasser_add_detail_binding.dart';
import 'package:brainbook/screens/trespasser_add_details/trespasser_add_details_screen.dart';
import 'package:brainbook/screens/trespasser_apb/trespasser_abp_binding.dart';
import 'package:brainbook/screens/trespasser_apb/trespasser_apb_screen.dart';
import 'package:brainbook/screens/trespasser_apb_details/trespasser_apb_detail_binding.dart';
import 'package:brainbook/screens/trespasser_apb_details/trespasser_apb_details_screen.dart';
import 'package:brainbook/screens/vehicle_stop_form/vehicle_stop_form_binding.dart';
import 'package:brainbook/screens/vehicle_stop_form/vehicle_stop_form_screen.dart';
import 'package:brainbook/screens/verification_code/verification_code_binding.dart';
import 'package:brainbook/screens/verification_code/verification_code_screen.dart';
import 'package:brainbook/screens/warrants/warrants_binding.dart';
import 'package:brainbook/screens/warrants/warrants_screen.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:brainbook/screens/window_tint_laws/window_tint_laws_binding.dart';
import 'package:brainbook/screens/window_tint_laws/window_tint_laws_screen.dart';
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
   // GetPage(name: Routes.homeScreen, page: ()=>  Home(),binding: HomeBinding()),
   //  GetPage(name: Routes.favoritesScreen, page: ()=>  FavoritesScreen(),binding: FavoritesBinding()),
   //  GetPage(name: Routes.askACopScreen, page: ()=>  AskACopScreen(),binding: AskACopBinding()),
   //  GetPage(name: Routes.noteBookScreen, page: ()=>  NoteBookScreen(),binding: NoteBookBinding()),
   //  GetPage(name: Routes.moreOptionScreen, page: ()=>  MoreOptionScreen(),binding: MoreBinding()),
    GetPage(name: Routes.translatorScreen, page: ()=>  TranslatorScreen(),binding: TranslatorBinding()),
    GetPage(name: Routes.commonPhraseScreen, page: ()=>  CommonPhraseScreen(),binding: CommonPhrasesBinding()),
    GetPage(name: Routes.audioScreen, page: ()=>  AudioScreen(),binding: AudioBinding()),
    GetPage(name: Routes.ageResultScreen, page: ()=>  AgeResultScreen(),binding: AgeResultBinding()),
    GetPage(name: Routes.gangSlangDetailScreen, page: ()=>  GangSlangDetailScreen(),binding: GangSlangDetailBinding()),
    GetPage(name: Routes.nHTSAManualScreen, page: ()=>  SFSTMoreOptionScreen(),binding: SFTAMoreOptionBinding()),
    GetPage(name: Routes.lawCaseDetailScreen, page: ()=>  CaseLawDetailScreen(),binding: CaseLawDetailsBinding()),
    GetPage(name: Routes.trespasserApbDetailsScreen, page: ()=>  TrespasserApbDetailsScreen(),binding: TrespasserApbDetailBinding()),
    GetPage(name: Routes.addTrespasserDetailsScreen, page: ()=>  AddTrespasserDetailsScreen(),binding: TrespasserAddDetailBinding()),
    GetPage(name: Routes.flashCardsScreen, page: ()=>  FlashCardsScreen(),binding: FlashCardsBinding()),
    GetPage(name: Routes.flashCardsListScreen, page: ()=>  FlashCardsListScreen(),binding: FlashCardListBinding()),
    GetPage(name: Routes.flashCardAddDetailsScreen, page: ()=>  FlashCardAddDetailsScreen(),binding: FlashCardAddDetailBinding()),
    GetPage(name: Routes.pATTrackerListScreen, page: ()=>  PATTrackerListScreen(),binding: PatTrackerListBinding()),
    GetPage(name: Routes.pATTrackerDetailScreen, page: ()=>  PATTrackerDetailScreen(),binding: PtaTrackerDetailBinding()),
    GetPage(name: Routes.pATTrackerAddDetailsScreen, page: ()=>  PATTrackerAddDetailsScreen(),binding: PatTrackerAddDetailBinding()),
    GetPage(name: Routes.askQuestionScreen, page: ()=>  AskQuestionScreen(),binding: AskQuestionBinding()),
    GetPage(name: Routes.responseScreen, page: ()=>  ResponseScreen(),binding: ResponseBinding()),
    GetPage(name: Routes.addResponseScreen, page: ()=>  AddResponseScreen(),binding: AddResponseBinding()),
    GetPage(name: Routes.locationScreen, page: ()=>  LocationScreen(),binding: LocationBinding()),
    GetPage(name: Routes.locationMoreInfoScreen, page: ()=>  LocationMoreInfoScreen(),binding: LocationMoreInfoBinding()),
    GetPage(name: Routes.locationAddDetailsScreen, page: ()=>  LocationAddDetailsScreen(),binding: LocationAddDetailBinding()),
    GetPage(name: Routes.trafficCodeScreen, page: ()=>  TrafficCodeScreen(),binding: TrafficCodeBinding()),
    GetPage(name: Routes.trafficCodeAddDetailScreen, page: ()=>  TrafficCodeAddDetailScreen(),binding: TrafficAddDetailsBinding()),
    GetPage(name: Routes.importantInfoScreen, page: ()=>  ImportantInfoScreen(),binding: ImportantInfoBinding()),
    GetPage(name: Routes.switchStateScreen, page: ()=>  SwitchStateScreen(),binding: SwitchStateBinding()),
    GetPage(name: Routes.redeemCardScreen, page: ()=>  RedeemCardScreen(),binding: RedeemCardBinding()),
    GetPage(name: Routes.subscribeScreen, page: ()=>  SubscribeScreen(),binding: SubscribeBinding()),
    GetPage(name: Routes.switchStateChangeScreen, page: ()=>  SwitchStateChangeScreen(),binding: SwitchStateChangeBinding()),
    GetPage(name: Routes.warrantsScreen, page: ()=>  Warrants(),binding: WarrantsBinding()),
    GetPage(name: Routes.federalCodeScreen, page: ()=>  FederalCode(),binding: FederalCodeBiding()),
    GetPage(name: Routes.lessLethalScreen, page: ()=>  LessLethal(),binding: LessLethalBinding()),
    GetPage(name: Routes.drugsRelatedScreen, page: ()=>  DrugsRelated(),binding: DrugsRelatedBinding()),
    GetPage(name: Routes.deadCheckListScreen, page: ()=>  DeadCheckListScreen(),binding: DeadChecklistBinding()),
    GetPage(name: Routes.ageCalculationScreen, page: ()=>  AgeCalculationScreen(),binding: AgeCalculationBinding()),
    GetPage(name: Routes.gangSlangScreen, page: ()=>  GangSlangScreen(),binding: GangSlanBinding()),
    GetPage(name: Routes.traficInvestigationScreen, page: ()=>  TraficInvestigationScreen(),binding: TrafficInvestigationBinding()),
    GetPage(name: Routes.testifyingTipsScreen, page: ()=>  TestifyingTipsScreen(),binding: TestifyingBinding()),
    GetPage(name: Routes.windowTintLawsScreen, page: ()=>  WindowTintLawsScreen(),binding: WindowTintLawsBinding()),
    GetPage(name: Routes.standardizedFST, page: ()=>  StandardizedFST(),binding: StandardizedFstsBinding()),
    GetPage(name: Routes.caseLawScreen, page: ()=>  CaseLawScreen(),binding: CaseLawBinding()),
    GetPage(name: Routes.gladysMarsyScreen, page: ()=>  GladysMarsyScreen(),binding: GladysMarsyBinding()),
    GetPage(name: Routes.gladysAdmonitionScreen, page: ()=>  GladysRAdmonitionScreen(),binding: GladysAdmonitionBinding()),
    GetPage(name: Routes.marsyLawScreen, page: ()=>  MarsyLawScreen(),binding: MarsysLawBinding()),
    GetPage(name: Routes.mirandaScreen, page: ()=>  MirandaScreen(),binding: MirandaBinding()),
    GetPage(name: Routes.keysToCastleScreen, page: ()=>  KeysToCastleScreen(),binding: KeysToCastleBinding()),
    GetPage(name: Routes.exigentCircumstancesScreen, page: ()=>  ExigentCircumstancesScreen(),binding: ExigentCircumstancesBinding()),
    GetPage(name: Routes.vehicleStopFormScreen, page: ()=>  VehicleStopFormScreen(),binding: VehicleStopFormBinding()),
    GetPage(name: Routes.trespasserAPBScreen, page: ()=>  TrespasserAPBScreen(),binding: TrespasserApbBinding()),
    GetPage(name: Routes.frontPlatesScreen, page: ()=>  FrontPlatesScreen(),binding: FrontPlatesBinding()),
    GetPage(name: Routes.recruitsStudyingScreen, page: ()=>  RecruitsStudyingScreen(),binding: RecruitsStudyingBunding()),
    GetPage(name: Routes.subscriptionSurveyScreen, page: ()=>  SubscriptionSurveyScreen(),binding: SubscriptionSurveyBinding()),
    GetPage(name: Routes.retirementToolsScreen, page: ()=>  RetirementToolsScreen(),binding: RetirementToolsBinding()),
    GetPage(name: Routes.firstAmdProvokers, page: ()=>  IstAmdProvokers(),binding: IstAmdProvokersBinding()),
    GetPage(name: Routes.profileScreen, page: ()=>  ProfileScreen(),binding: ProfileBinding()),
    GetPage(name: Routes.settingsScreen, page: ()=>  SettingsScreen(),binding: SettingsBinding()),
    GetPage(name: Routes.settingsLocationScreen, page: ()=>  SettingsLocationScreen(),binding: SettingsLocationBinding()),
  ];
}