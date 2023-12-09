import 'package:bold_freelance/core/app_export.dart';
import 'package:bold_freelance/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListwalletOneItemWidget extends StatelessWidget {
  const ListwalletOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(67),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            height: getSize(48),
            width: getSize(48),
            padding: getPadding(
              all: 12,
            ),
            decoration: IconButtonStyleHelper.fillTealA,
            child: CustomImageView(
              svgPath: ImageConstant.imgWallet,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "",
              style: CustomTextStyles.titleSmallPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
