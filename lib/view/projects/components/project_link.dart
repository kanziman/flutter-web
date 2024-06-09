import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse(projectList[index].link));
          },
          child: Row(
            children: [
              const Text('Check on Github',
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              SvgPicture.asset('assets/icons/github.svg'),
            ],
          ),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(
                  projectList[index].site ?? projectList[index].link));
            },
            child: const Text(
              'View >>',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ))
      ],
    );
  }
}
