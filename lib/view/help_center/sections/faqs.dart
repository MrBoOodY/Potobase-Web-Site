import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/widgets/custom_paragraph_text.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({Key? key}) : super(key: key);

  static const TextStyle _textStyle =
      TextStyle(fontSize: 20, color: AppColors.helpCenterButtonText);
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: const [
            CustomParagraphText(
              text: 'What is PotoBase?',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20),
            CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text:
                  'PotoBase is an e-commerce app and website where you can browse products and prices of which you can later visit the shop and buy.',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20),
            CustomParagraphText(
              text: 'Will I be purchasing the products online?',
              textStyle: _textStyle,
            ),
            SizedBox(height: 10),
            CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text:
                  'No, you will have to visit the shop personally for e purchase.',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20),
            CustomParagraphText(
              text: 'Do I need to sign in, in order to view the products?',
              textStyle: _textStyle,
            ),
            SizedBox(height: 10),
            CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text:
                  'Signing in is optional. You can browse the products for later purchase.',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20),
            CustomParagraphText(
              text: 'Are all your products from the same company?',
              textStyle: _textStyle,
            ),
            SizedBox(height: 10),
            CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text:
                  'We offer products from different companies to maintain quality. We also have both high end and low end products for every customer satisfaction.',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20),
            CustomParagraphText(
              text: 'Are the listed prices same as the shop prices?',
              textStyle: _textStyle,
            ),
            SizedBox(height: 10),
            CustomParagraphText(
              dotColor: AppColors.helpCenterButtonColor,
              text:
                  'Yes, all our prices are exactly identical both on the app and in the physical shop.',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
