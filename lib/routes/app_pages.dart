// ignore_for_file: prefer_const_constructors

import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/illinois/alcohol/alcohol_binding.dart';
import 'package:brainbook/screens/illinois/alcohol/alcohol_screen.dart';
import 'package:brainbook/screens/illinois/alcohol_detail/alcohol_detail_binding.dart';
import 'package:brainbook/screens/illinois/alcohol_detail/alcohol_detail_screen.dart';
import 'package:brainbook/screens/illinois/bellwood_pd/bellwood_pd_binding.dart';
import 'package:brainbook/screens/illinois/cicero_pd/cicero_pd_binding.dart';
import 'package:brainbook/screens/illinois/common_codes/common_codes_binding.dart';
import 'package:brainbook/screens/illinois/common_codes/common_codes_screen.dart';
import 'package:brainbook/screens/illinois/domestic_violence/domestic_violence_binding.dart';
import 'package:brainbook/screens/illinois/domestic_violence/domestic_violence_screen.dart';
import 'package:brainbook/screens/illinois/dupage_county/dupage_county_binding.dart';
import 'package:brainbook/screens/illinois/dupage_county/dupage_county_screen.dart';
import 'package:brainbook/screens/illinois/grayslake_pd/grayslake_pd_binding.dart';
import 'package:brainbook/screens/illinois/grayslake_pd/grayslake_pd_screen.dart';
import 'package:brainbook/screens/illinois/hometown_pd/hometown_pd_binding.dart';
import 'package:brainbook/screens/illinois/hometown_pd/hometown_pd_screen.dart';
import 'package:brainbook/screens/illinois/isp_districts/isp_districts_binding.dart';
import 'package:brainbook/screens/illinois/isp_districts/isp_districts_screen.dart';
import 'package:brainbook/screens/illinois/isp_districts_details/isp_districts_details_binding.dart';
import 'package:brainbook/screens/illinois/isp_districts_details/isp_districts_details_screen.dart';
import 'package:brainbook/screens/illinois/joliet_pd/joliet_pd_binding.dart';
import 'package:brainbook/screens/illinois/joliet_pd/joliet_pd_screen.dart';
import 'package:brainbook/screens/illinois/lake_county/lake_county_binding.dart';
import 'package:brainbook/screens/illinois/lake_county/lake_county_screen.dart';
import 'package:brainbook/screens/illinois/naperville/naperville_binding.dart';
import 'package:brainbook/screens/illinois/rockford_pd/rockford_pd_binding.dart';
import 'package:brainbook/screens/illinois/rockford_pd/rockford_pd_screen.dart';
import 'package:brainbook/screens/illinois/romeoville_pd/romeoville_pd_binding.dart';
import 'package:brainbook/screens/illinois/romeoville_pd/romeoville_pd_screen.dart';
import 'package:brainbook/screens/illinois/springfield/springfield_binding.dart';
import 'package:brainbook/screens/illinois/springfield/springfield_screen.dart';
import 'package:brainbook/screens/illinois/weapons/weapons_binding.dart';
import 'package:brainbook/screens/illinois/weapons/weapons_controller.dart';
import 'package:brainbook/screens/illinois/weapons/weapons_screen.dart';
import 'package:brainbook/screens/illinois/weapons_detail/weapons_detail_binding.dart';
import 'package:brainbook/screens/illinois/weapons_detail/weapons_detail_screen.dart';
import 'package:brainbook/screens/illinois/will_county/will_county_binding.dart';
import 'package:brainbook/screens/illinois/will_county/will_county_screen.dart';
import 'package:brainbook/screens/main/Ist_amd_provokers/Ist_amd_provokers_screen.dart';
import 'package:brainbook/screens/main/Ist_amd_provokers/lst_amd_provokers_binding.dart';
import 'package:brainbook/screens/add_response/add_response_binding.dart';
import 'package:brainbook/screens/add_response/add_response_screen.dart';
import 'package:brainbook/screens/main/age_calculation/age_calculation_binding.dart';
import 'package:brainbook/screens/main/age_calculation/age_calculation_screen.dart';
import 'package:brainbook/screens/main/age_result/age_result_binding.dart';
import 'package:brainbook/screens/main/age_result/age_result_screen.dart';
import 'package:brainbook/screens/ask_question/ask_question_binding.dart';
import 'package:brainbook/screens/ask_question/ask_question_screen.dart';
import 'package:brainbook/screens/main/audio/audio_binding.dart';
import 'package:brainbook/screens/main/audio/audio_screen.dart';
import 'package:brainbook/screens/illinois/bellwood_pd/bellwood_pd_screen.dart';
import 'package:brainbook/screens/main/case_law/case_law_binding.dart';
import 'package:brainbook/screens/main/case_law/case_law_screen.dart';
import 'package:brainbook/screens/main/case_law_detail/case_law_detail_binding.dart';
import 'package:brainbook/screens/main/case_law_detail/case_law_detail_screen.dart';
import 'package:brainbook/screens/illinois/chicago_pd/chicago_pd_binding.dart';
import 'package:brainbook/screens/illinois/chicago_pd/chicago_pd_screen.dart';
import 'package:brainbook/screens/illinois/cicero_pd/cicero_pd_screen.dart';
import 'package:brainbook/screens/main/common_phrases/common_phrase_screen.dart';
import 'package:brainbook/screens/main/common_phrases/common_phrases_binding.dart';
import 'package:brainbook/screens/illinois/cook_county/cook_county_binding.dart';
import 'package:brainbook/screens/illinois/cook_county/cook_county_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_screen.dart';
import 'package:brainbook/screens/dash_board/dash_board_binding.dart';
import 'package:brainbook/screens/main/dead_checklist/dead_checklist_binding.dart';
import 'package:brainbook/screens/main/dead_checklist/dead_checklist_screen.dart';
import 'package:brainbook/screens/main/drugs_related/drugs_related_binding.dart';
import 'package:brainbook/screens/main/drugs_related/drugs_related_screen.dart';
import 'package:brainbook/screens/main/exigent_circumstances/exigent_circumstances_binding.dart';
import 'package:brainbook/screens/main/exigent_circumstances/exigent_circumstances_screen.dart';
import 'package:brainbook/screens/faqs/faqs_binding.dart';
import 'package:brainbook/screens/faqs/faqs_screen.dart';
import 'package:brainbook/screens/faqs_detail/faqs_detail_binding.dart';
import 'package:brainbook/screens/faqs_detail/faqs_detail_screen.dart';
import 'package:brainbook/screens/main/federal_codes/federal_code_binding.dart';
import 'package:brainbook/screens/main/federal_codes/federal_code_screen.dart';
import 'package:brainbook/screens/main/flash_card_add_details/flash_card_add_detail_binding.dart';
import 'package:brainbook/screens/main/flash_card_add_details/flash_card_add_details_screen.dart';
import 'package:brainbook/screens/main/flash_cards/flash_cards_binding.dart';
import 'package:brainbook/screens/main/flash_cards/flash_cards_screen.dart';
import 'package:brainbook/screens/main/flash_cards_list/flash_card_list_binding.dart';
import 'package:brainbook/screens/main/flash_cards_list/flash_cards_list_screen.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_binding.dart';
import 'package:brainbook/screens/forogt_password/forgot_password_screen.dart';
import 'package:brainbook/screens/main/front_plates/front_plates_binding.dart';
import 'package:brainbook/screens/main/front_plates/front_plates_screen.dart';
import 'package:brainbook/screens/main/gang_slang/gang_slang_binding.dart';
import 'package:brainbook/screens/main/gang_slang/gang_slang_screen.dart';
import 'package:brainbook/screens/main/gang_slang_detail/gang_slang_detail_binding.dart';
import 'package:brainbook/screens/main/gang_slang_detail/gang_slang_detail_screen.dart';
import 'package:brainbook/screens/main/gladys_marsy/gladys_marsy_binding.dart';
import 'package:brainbook/screens/main/gladys_marsy/gladys_marsy_screen.dart';
import 'package:brainbook/screens/main/gladys_r_admonition/gladys_admonition_binding.dart';
import 'package:brainbook/screens/main/gladys_r_admonition/gladys_r_admonition_screen.dart';
import 'package:brainbook/screens/go_offline/go_offline_binding.dart';
import 'package:brainbook/screens/go_offline/go_offline_screen.dart';
import 'package:brainbook/screens/important_information/important_info_binding.dart';
import 'package:brainbook/screens/important_information/important_information_screen.dart';
import 'package:brainbook/screens/main/keys_to_castle/keys_to_castle_binding.dart';
import 'package:brainbook/screens/main/keys_to_castle/keys_to_castle_screen.dart';
import 'package:brainbook/screens/main/less_lethal/less_lethal_binding.dart';
import 'package:brainbook/screens/main/less_lethal/less_lethal_screen.dart';
import 'package:brainbook/screens/illinois/lewis_university_pd/lewis_university_pd_binding.dart';
import 'package:brainbook/screens/illinois/lewis_university_pd/lewis_university_pd_screen.dart';
import 'package:brainbook/screens/location_add_details/location_add_detail_binding.dart';
import 'package:brainbook/screens/location_add_details/location_add_details_screen.dart';
import 'package:brainbook/screens/location_more_information/location_more_info_binding.dart';
import 'package:brainbook/screens/location_more_information/location_more_information_screen.dart';
import 'package:brainbook/screens/locations/location_binding.dart';
import 'package:brainbook/screens/locations/location_screen.dart';
import 'package:brainbook/screens/login/login_binding.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/main/marsys_law/marsys_law_binding.dart';
import 'package:brainbook/screens/main/marsys_law/marsys_law_screen.dart';
import 'package:brainbook/screens/main/miranda/miranda_binding.dart';
import 'package:brainbook/screens/main/miranda/miranda_screen.dart';
import 'package:brainbook/screens/main/retirement_tools/retirement_tools_binding.dart';
import 'package:brainbook/screens/main/sfst_more_option/sfst_more_option_binding.dart';
import 'package:brainbook/screens/main/standardized_fsts/standardized_fsts_binding.dart';
import 'package:brainbook/screens/main/testifying_tips/testifying_binding.dart';
import 'package:brainbook/screens/main/warrants/warrants_binding.dart';
import 'package:brainbook/screens/main/warrants/warrants_screen.dart';
import 'package:brainbook/screens/main/window_tint_laws/window_tint_laws_binding.dart';
import 'package:brainbook/screens/illinois/naperville/naperville_screen.dart';
import 'package:brainbook/screens/new_password/new_password_binding.dart';
import 'package:brainbook/screens/new_password/new_password_screen.dart';
import 'package:brainbook/screens/password_update/password_update_screen.dart';
import 'package:brainbook/screens/main/pat_tracker_list/pat_tracker_list_binding.dart';
import 'package:brainbook/screens/main/pat_tracker_list/pat_tracker_list_screen.dart';
import 'package:brainbook/screens/privacy_policy/privacy_policy_binding.dart';
import 'package:brainbook/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:brainbook/screens/profile/profile_binding.dart';
import 'package:brainbook/screens/profile/profile_screen.dart';
import 'package:brainbook/screens/main/pta_tracker_add_details/pat_tracker_add_detail_binding.dart';
import 'package:brainbook/screens/main/pta_tracker_add_details/pta_tracker_add_details_screen.dart';
import 'package:brainbook/screens/main/pta_tracker_detail/pta_tracker_detail_binding.dart';
import 'package:brainbook/screens/main/pta_tracker_detail/pta_tracker_detail_screen.dart';
import 'package:brainbook/screens/main/recruits_studying/recruits_studying_binding.dart';
import 'package:brainbook/screens/main/recruits_studying/recruits_studying_screen.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_binding.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_screen.dart';
import 'package:brainbook/screens/response/response_binding.dart';
import 'package:brainbook/screens/response/response_screen.dart';
import 'package:brainbook/screens/main/retirement_tools/retirement_tools_screen.dart';
import 'package:brainbook/screens/settings/settings_binding.dart';
import 'package:brainbook/screens/settings/settings_screen.dart';
import 'package:brainbook/screens/settings_distance_unit/settings_distance_unit_binding.dart';
import 'package:brainbook/screens/settings_distance_unit/settings_distance_unit_screen.dart';
import 'package:brainbook/screens/settings_location/settings_location_binding.dart';
import 'package:brainbook/screens/settings_location/settings_location_screen.dart';
import 'package:brainbook/screens/main/sfst_more_option/sfta_more_option_screen.dart';
import 'package:brainbook/screens/signup/signup_binding.dart';
import 'package:brainbook/screens/signup/signup_screen.dart';
import 'package:brainbook/screens/splash/splash_screen.dart';
import 'package:brainbook/screens/main/standardized_fsts/standardized_fsts_screen.dart';
import 'package:brainbook/screens/subscribe/subscribe_binding.dart';
import 'package:brainbook/screens/subscribe/subscribe_screen.dart';
import 'package:brainbook/screens/main/subscription_survey/subscription_survey_binding.dart';
import 'package:brainbook/screens/main/subscription_survey/subscription_survey_screen.dart';
import 'package:brainbook/screens/support/support_binding.dart';
import 'package:brainbook/screens/support/support_screen.dart';
import 'package:brainbook/screens/switch_state/switch_state_binding.dart';
import 'package:brainbook/screens/switch_state/switch_state_screen.dart';
import 'package:brainbook/screens/switch_state_change/switch_state_change_binding.dart';
import 'package:brainbook/screens/switch_state_change/switch_state_change_screen.dart';
import 'package:brainbook/screens/main/testifying_tips/testifying_tips_screen.dart';
import 'package:brainbook/screens/traffic_code/traffic_code_binding.dart';
import 'package:brainbook/screens/traffic_code/traffic_screen.dart';
import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_detail_binding.dart';
import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_details_screen.dart';
import 'package:brainbook/screens/main/trafic_investigation/traffic_investigation_binding.dart';
import 'package:brainbook/screens/main/trafic_investigation/trafic_investigation_screen.dart';
import 'package:brainbook/screens/main/translator/translator_screen.dart';
import 'package:brainbook/screens/main/translator/trasnlator_binding.dart';
import 'package:brainbook/screens/main/trespasser_add_details/trespasser_add_detail_binding.dart';
import 'package:brainbook/screens/main/trespasser_add_details/trespasser_add_details_screen.dart';
import 'package:brainbook/screens/main/trespasser_apb/trespasser_abp_binding.dart';
import 'package:brainbook/screens/main/trespasser_apb/trespasser_apb_screen.dart';
import 'package:brainbook/screens/main/trespasser_apb_details/trespasser_apb_detail_binding.dart';
import 'package:brainbook/screens/main/trespasser_apb_details/trespasser_apb_details_screen.dart';
import 'package:brainbook/screens/main/vehicle_stop_form/vehicle_stop_form_binding.dart';
import 'package:brainbook/screens/main/vehicle_stop_form/vehicle_stop_form_screen.dart';
import 'package:brainbook/screens/verification_code/verification_code_binding.dart';
import 'package:brainbook/screens/verification_code/verification_code_screen.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:brainbook/screens/main/window_tint_laws/window_tint_laws_screen.dart';
import 'package:brainbook/screens/illinois/your_department/your_department_binding.dart';
import 'package:brainbook/screens/illinois/your_department/your_department_screen.dart';
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
    GetPage(name: Routes.settingsDistanceUnitScreen, page: ()=>  SettingsDistanceUnitScreen(),binding: SettingsDistanceUnitBinding()),
    GetPage(name: Routes.fAQsScreen, page: ()=>  FAQsScreen(),binding: FAQsBinding()),
    GetPage(name: Routes.fAQsDetailScreen, page: ()=>  FAQsDetailScreen(),binding: FAQsDetailBinding()),
    GetPage(name: Routes.goOfflineScreen, page: ()=>  GoOfflineScreen(),binding: GoOfflineBinding()),
    GetPage(name: Routes.supportScreen, page: ()=>  SupportScreen(),binding: SupportBinding()),
    GetPage(name: Routes.privacyPolicyScreen, page: ()=>  PrivacyPolicyScreen(),binding: PrivacyPolicyBinding()),
    GetPage(name: Routes.yourDeptScreen, page: ()=>  YourDeptScreen(),binding: YourDeptBinding()),
    GetPage(name: Routes.bellwoodPDScreen, page: ()=>  BellwoodPDScreen(),binding: BellwoodPDBinding()),
    GetPage(name: Routes.lakeCountryScreen, page: ()=>  LakeCountryScreen(),binding: LakeCountryBinding()),
    GetPage(name: Routes.chicagoPDScreen, page: ()=>  ChicagoPDScreen(),binding: ChicagoPDBinding()),
    GetPage(name: Routes.lewisUniversityPDScreen, page: ()=>  LewisUniversityPDScreen(),binding: LewisUniversityPDBinding()),
    GetPage(name: Routes.ciceroPDScreen, page: ()=>  CiceroPDScreen(),binding: CiceroPDBinding()),
    GetPage(name: Routes.napervilleScreen, page: ()=>  NapervilleScreen(),binding: NapervilleBinding()),
    GetPage(name: Routes.cookCountyScreen, page: ()=>  CookCountyScreen(),binding: CookCountyBinding()),
    GetPage(name: Routes.springfieldScreen, page: ()=>  SpringfieldScreen(),binding: SpringfieldBinding()),
    GetPage(name: Routes.dupageCountyScreen, page: ()=>  DupageCountyScreen(),binding: DupageCountyBinding()),
    GetPage(name: Routes.rockfordPDScreen, page: ()=>  RockfordPDScreen(),binding: RockfordPDBinding()),
    GetPage(name: Routes.grayslakePDScreen, page: ()=>  GrayslakePDScreen(),binding: GrayslakePDBinding()),
    GetPage(name: Routes.romeopvillePDScreen, page: ()=>  RomeopvillePDScreen(),binding: RomeopvillePDBinding()),
    GetPage(name: Routes.hometownPDScreen, page: ()=>  HometownPDScreen(),binding: HometownPDBinding()),
    GetPage(name: Routes.willCountyScreen, page: ()=>  WillCountyScreen(),binding: WillCountyBinding()),
    GetPage(name: Routes.jolietPDScreen, page: ()=>  JolietPDScreen(),binding: JolietPDBinding()),
    GetPage(name: Routes.iSPDistrictsScreen, page: ()=>  ISPDistrictsScreen(),binding: ISPDistrictsBinding()),
    GetPage(name: Routes.iSPDistrictDetailsScreen, page: ()=>  ISPDistrictDetailsScreen(),binding: ISPDistrictDetailsBinding()),
    GetPage(name: Routes.commonCodesScreen, page: ()=>  CommonCodesScreen(),binding: CommonCodesBinding()),
    GetPage(name: Routes.alcoholScreen, page: ()=>  AlcoholScreen(),binding: AlcoholBinding()),
    GetPage(name: Routes.alcoholDetailScreen, page: ()=>  AlcoholDetailScreen(),binding: AlcoholDetailBinding()),
    GetPage(name: Routes.weaponsScreen, page: ()=>  WeaponsScreen(),binding: WeaponsBinding()),
    GetPage(name: Routes.weaponDetailScreen, page: ()=>  WeaponDetailScreen(),binding: WeaponDetailBinding()),
    GetPage(name: Routes.domesticViolenceScreen, page: ()=>  DomesticViolenceScreen(),binding: DomesticViolenceBinding()),
  ];
}