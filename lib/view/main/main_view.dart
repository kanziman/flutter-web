import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            ),
            _bottomPolicy(),
          ],
        ),
      ),
    );
  }

  Padding _bottomPolicy() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    kTerms)),
                child: const Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Text(' | '),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    kPolicy)),
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
