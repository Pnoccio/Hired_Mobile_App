import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'package:bold_freelance/core/app_export.dart';
import 'package:bold_freelance/widgets/app_bar/appbar_image.dart';
import 'package:bold_freelance/widgets/app_bar/appbar_title.dart';
import 'package:bold_freelance/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(48),
          leading: AppbarImage(
            svgPath: ImageConstant.imgGroup162799,
            margin: getMargin(left: 24, top: 13, bottom: 13),
            onTap: () {
              onTapArrowbackone(context);
            },
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Notifications",
          ),
        ),
        body: Container(
          width: getHorizontalSize(327),
          margin: getMargin(left: 24, top: 30, right: 24, bottom: 5),
          padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
          decoration: AppDecoration.outlineIndigo
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Messages Notifications",
                style: CustomTextStyles.labelLargePoppinsGray500,
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(top: 17),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: getPadding(top: 10.5, bottom: 10.5),
                        child: SizedBox(
                          width: getHorizontalSize(295),
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
                      return NotificationsItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
