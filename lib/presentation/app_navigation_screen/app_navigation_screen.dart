import 'package:bold_freelance/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:bold_freelance/presentation/confirmation_dialog/confirmation_dialog.dart';
import 'package:bold_freelance/presentation/filter_bottomsheet/filter_bottomsheet.dart';
import 'package:bold_freelance/presentation/apply_job_popup_dialog/apply_job_popup_dialog.dart';
import 'package:bold_freelance/presentation/logout_popup_dialog/logout_popup_dialog.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                            left: 20, top: 10, right: 20, bottom: 10),
                        child: Text(
                          "App Navigation",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: appTheme.black900,
                            fontSize: getFontSize(20),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(left: 20),
                        child: Text(
                          "Check your app's UI from the below demo screens of your app.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: appTheme.blueGray40001,
                            fontSize: getFontSize(16),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(top: 5),
                      child: Divider(
                        height: getVerticalSize(1),
                        thickness: getVerticalSize(1),
                        color: appTheme.black900,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onTapSplashScreen(context);
                          },
                          child: Container(
                            decoration: AppDecoration.fillOnPrimaryContainer,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                        left: 20,
                                        top: 10,
                                        right: 20,
                                        bottom: 10),
                                    child: Text(
                                      "Splash Screen",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: getFontSize(20),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(top: 5),
                                  child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.blueGray40001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Add similar GestureDetector containers for other screens
                        // ...
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapSplashScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  onTapOnboardingOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingOneScreen);
  }

  onTapOnboardingTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
  }

  onTapOnboardingThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen);
  }

  onTapSignUpCreateAcount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCreateAcountScreen);
  }

  onTapSignUpCompleteAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCompleteAccountScreen);
  }

  onTapJobType(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobTypeScreen);
  }

  onTapSpeciallization(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.speciallizationScreen);
  }

  onTapConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: ConfirmationDialog(),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }

  onTapSelectaCountry(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectACountryScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapEnterOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
  }

  onTapHomeContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  onTapFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => FilterBottomsheet(),
      isScrollControlled: true,
    );
  }

  onTapJobDetailsTabContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobDetailsTabContainerScreen);
  }

  onTapMessageAction(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageActionScreen);
  }

  onTapChat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  onTapApplyJob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.applyJobScreen);
  }

  onTapApplyJobPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: ApplyJobPopupDialog(),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }

  onTapNotificationsMyProposalsTabContainer(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.notificationsMyProposalsTabContainerScreen);
  }

  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  onTapLogoutpopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: LogoutPopupDialog(),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }

  onTapPersonalInfo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalInfoScreen);
  }

  onTapExperienceSetting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.experienceSettingScreen);
  }

  onTapNewPosition(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newPositionScreen);
  }

  onTapAddNewEducation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewEducationScreen);
  }

  onTapPrivacy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyScreen);
  }

  onTapLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }

  onTapNotifications(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
