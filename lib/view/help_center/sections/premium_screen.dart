import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/widgets/custom_paragraph_text.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  static const TextStyle _textStyle =
      TextStyle(fontSize: 20, color: AppColors.helpCenterButtonText);
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'We Have 2 Premium Options',
              style: _textStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 20.0),
            const CustomParagraphText(
              text: '2 Sponsored Ads',
              textStyle: _textStyle,
            ),
            const SizedBox(height: 10.0),
            const CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text: 'You Can Buy premium for 2 Sponsored Ads for 30 days.\n',
              textStyle: _textStyle,
            ),
            const SizedBox(height: 20.0),
            const CustomParagraphText(
              text: '10 Sponsored Ads',
              textStyle: _textStyle,
            ),
            const SizedBox(height: 10.0),
            const CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text: 'You Can Buy premium for 10 Sponsored Ads for 30 days.\n',
              textStyle: _textStyle,
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
