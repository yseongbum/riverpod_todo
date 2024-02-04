import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key, required this.text, required this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      textAlign: TextAlign.left,
      /// Whether the text should break at soft line breaks.
      ///
      /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
      softWrap: false,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
