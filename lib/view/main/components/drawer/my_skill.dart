import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  // Image.asset(image!,height: 15,width: 15,fit: BoxFit.cover,),
                  SvgPicture.network(image!,
                      height: 15, width: 15, fit: BoxFit.cover),

                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Flutter & Dart',
          image:
              "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/flutter/flutter-original.svg",
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Java',
            image:
                'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/java/java-original.svg'),
        AnimatedLinearProgressIndicator(
            percentage: 0.6,
            title: 'Python',
            image:
                'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/python/python-original.svg'),
        AnimatedLinearProgressIndicator(
            percentage: 0.6,
            title: 'AWS',
            image:
                'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg'),
        AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: 'Database',
            image:
                'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/azuresqldatabase/azuresqldatabase-original.svg'),
      ],
    );
  }
}
