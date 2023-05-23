import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_assets.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'about_me.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'constants.dart';
import 'helper_class.dart';
import 'main_dashboard.dart';
import 'profile_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final PageStorageBucket bucket = PageStorageBucket();
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageStorage(
        bucket: bucket,
        child: const MainDashBoard(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final socialButtons = <String>[
    AppAssets.linkedin,
    AppAssets.email,
    AppAssets.github,
  ];
  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          Expanded(child: const ProfileAnimation()),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hello, It\'s Me',
            style: AppTextStyles.e(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Vaishnavi',
            style: AppTextStyles.ei(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  'And I\'m a ',
                  style: AppTextStyles.e(color: Colors.white),
                ),
              ),
              Flexible(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyles.e(color: Colors.lightBlue),
                    ),
                    TyperAnimatedText('Learner',
                        textStyle: AppTextStyles.e(color: Colors.lightBlue)),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.02,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () =>
                        launchURL(url: "https://github.com/vaishnavi-sangal"),
                    child: const Icon(
                      FontAwesomeIcons.github,
                      color: Color(0xffa8b2d1),
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  GestureDetector(
                    onTap: () =>
                        launchURL(url: "https://twitter.com/VaishnaviSangal"),
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Color(0xffa8b2d1),
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(width: 35.0),
                  GestureDetector(
                    onTap: () => launchURL(
                        url:
                            "https://www.linkedin.com/in/vaishnavi-sangal-b3777a203/"),
                    child: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Color(0xffa8b2d1),
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  GestureDetector(
                    onTap: () => launchCaller(),
                    child: const Icon(
                      Icons.call,
                      color: Color(0xffa8b2d1),
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  GestureDetector(
                    onTap: () => launchEmail(),
                    child: const Icon(
                      Icons.mail,
                      color: Color(0xffa8b2d1),
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 40.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {
                launchURL(
                    url:
                        'https://drive.google.com/file/d/1V_dgikOvorZBzhFAt5cqShijqtTg6hfv/view?usp=share_link');
              },
              buttonName: 'Download Resume'),
        ),
      ],
    );
  }

  Future<void> launchURL({required String url}) async {
    // const url =
    //   'https://drive.google.com/file/d/1V_dgikOvorZBzhFAt5cqShijqtTg6hfv/view?usp=share_link';
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }
}

launchCaller() async {
  const url = "tel:8979043181";
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

launchEmail() async {
  const url = "mailto:vaishnavisangal787@gmail.com";
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}
