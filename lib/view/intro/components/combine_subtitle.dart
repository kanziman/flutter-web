import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';

import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Responsive(
          desktop:
              AnimatedSubtitleText(start: 30, end: 40, text: 'Full-stack '),
          largeMobile:
              AnimatedSubtitleText(start: 30, end: 25, text: 'Full-stack '),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Full-stack '),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Full-stack '),
        ),
        Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Developer ', gradient: true),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Developer ', gradient: true),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Developer ', gradient: true),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Developer ', gradient: true),
        )
      ],
    );
  }
}
