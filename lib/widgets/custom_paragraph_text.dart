import 'package:flutter/material.dart';

class CustomParagraphText extends StatelessWidget {
  const CustomParagraphText({
    Key? key,
    required this.text,
    this.textStyle,
    this.dotColor,
  }) : super(key: key);
  final String text;
  final TextStyle? textStyle;
  final Color? dotColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            SizedBox(
              height: 7,
              width: 7,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: dotColor ?? Colors.grey,
                  shape: const CircleBorder(),
                ),
                child: const SizedBox.shrink(),
                onPressed: () {},
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  color: Colors.grey.shade600,
                ),
          ),
        ),
      ],
    );
  }
}
