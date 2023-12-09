import 'package:bold_freelance/core/app_export.dart';
import 'package:bold_freelance/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListenglishukItemWidget extends StatelessWidget {
  ListenglishukItemWidget({Key? key})
      : super(
          key: key,
        );

  bool englishuk = false;

  @override
  Widget build(BuildContext context) {
    return CustomCheckboxButton(
      width: getHorizontalSize(295),
      text: "English (UK)",
      value: englishuk,
      textStyle: CustomTextStyles.titleMediumGray900,
      isRightCheck: true,
      onChange: (value) {
        englishuk = value;
      },
    );
  }
}
