import '../message_page/widgets/message_item_widget.dart';
import 'package:bold_freelance/core/app_export.dart';
import 'package:bold_freelance/widgets/app_bar/appbar_image.dart';
import 'package:bold_freelance/widgets/app_bar/appbar_title.dart';
import 'package:bold_freelance/widgets/app_bar/custom_app_bar.dart';
import 'package:bold_freelance/widgets/custom_elevated_button.dart';
import 'package:bold_freelance/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
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
            text: "Message",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(all: 24),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomSearchView(
                  margin: getMargin(top: 4),
                  controller: searchController,
                  hintText: "Search Message...",
                  hintStyle: CustomTextStyles.titleMediumBluegray400,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 17,
                      right: 8,
                      bottom: 17,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      52,
                    ),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 17,
                      right: 16,
                      bottom: 17,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFilterPrimary,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      52,
                    ),
                  ),
                  contentPadding: getPadding(
                    top: 12,
                    bottom: 12,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(top: 24),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: getPadding(
                            top: 7.5,
                            bottom: 7.5,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(327),
                            child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.indigo50,
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return MessageItemWidget(
                          onTapRowesther: () {
                            onTapRowesther(context);
                          },
                        );
                      },
                    ),
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: getVerticalSize(46),
                  width: getHorizontalSize(137),
                  text: "New Chat",
                  leftIcon: Container(
                    margin: getMargin(right: 4),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgPlusGray5001,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                  buttonTextStyle: CustomTextStyles.titleSmallGray5001,
                )
              ]),
        ),
      ),
    );
  }

  onTapRowesther(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
