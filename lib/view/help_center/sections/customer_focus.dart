import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/widgets/custom_paragraph_text.dart';

class CustomerFocusScreen extends StatelessWidget {
  const CustomerFocusScreen({Key? key}) : super(key: key);

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
          children: const [
            CustomParagraphText(
              text: 'You can get a job in Potobase.\n',
              textStyle: _textStyle,
            ),
            CustomParagraphText(
              text: 'and You can also find a meet.\n',
              textStyle: _textStyle,
            ),
            CustomParagraphText(
              text: 'You can even chat with us instantly',
              textStyle: _textStyle,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
