import 'package:bold_freelance/core/app_export.dart';
import 'package:bold_freelance/widgets/app_bar/appbar_image.dart';
import 'package:bold_freelance/widgets/app_bar/appbar_title.dart';
import 'package:bold_freelance/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        appBar: CustomAppBar(
          height: getVerticalSize(51),
          leadingWidth: getHorizontalSize(48),
          leading: AppbarImage(
              svgPath: ImageConstant.imgGroup162799,
              margin: getMargin(left: 24, top: 13, bottom: 14),
              onTap: () {
                onTapArrowbackone(context);
              }),
          centerTitle: true,
          title: AppbarTitle(
            text: "Legel and Policies",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(top: 30),
                child: Text(
                  "Terms",
                  style: CustomTextStyles.titleMediumBold_1,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: getHorizontalSize(307),
                  margin: getMargin(top: 11, right: 19),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray400_2.copyWith(
                      height: 1.57,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: getHorizontalSize(307),
                  margin: getMargin(top: 4, right: 19),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray400_2.copyWith(
                      height: 1.57,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 21),
                child: Text(
                  "Changes to the Service and/or Terms:",
                  style: CustomTextStyles.titleMediumBold_1,
                ),
              ),
              Container(
                height: getVerticalSize(298),
                width: getHorizontalSize(307),
                margin: getMargin(top: 7),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Opacity(
                        opacity: 0.5,
                        child: SizedBox(
                          width: getHorizontalSize(307),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallBluegray400_2
                                .copyWith(
                              height: 1.57,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Opacity(
                        opacity: 0.5,
                        child: SizedBox(
                          width: getHorizontalSize(307),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallBluegray400_2
                                .copyWith(
                              height: 1.57,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
