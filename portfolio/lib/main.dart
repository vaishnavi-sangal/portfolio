import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_assets.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'method.dart';
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
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
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
            'Vaishnavi Sangal',
            style: AppTextStyles.ei(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                'And I\'m a ',
                style: AppTextStyles.e(color: Colors.white),
              ),
              AnimatedTextKit(
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
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.7,
              height: size.height * 0.02,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Color(0xffa8b2d1),
                    iconSize: 30.0,
                    onPressed: () =>
                        launchURL(url: "https://github.com/vaishnavi-sangal"),
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    color: Color(0xffa8b2d1),
                    iconSize: 30.0,
                    onPressed: () =>
                        launchURL(url: "https://twitter.com/VaishnaviSangal"),
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    color: Color(0xffa8b2d1),
                    onPressed: () => launchURL(
                        url:
                            "https://www.linkedin.com/in/vaishnavi-sangal-b3777a203/"),
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.call),
                    color: Color(0xffa8b2d1),
                    // color: Color(0xffffA8B2D1),
                    iconSize: 30.0,
                    onPressed: () => launchCaller(),
                  ),
                  IconButton(
                    icon: Icon(Icons.mail),
                    color: Color(0xffa8b2d1),
                    iconSize: 30.0,
                    onPressed: () => launchEmail(),
                  ),
                ],
              ),
            ),
            /*
            FadeInUp(
              duration: const Duration(milliseconds: 1600),
              child: SizedBox(
                height: 48,
                child: ListView.separated(
                  itemCount: socialButtons.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, child) =>
                      Constants.sizedBox(width: 8.0),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: Appcolors.co,
                      splashColor: Appcolors.lawGreen,
                      child: buildSocialButton(
                          asset: socialButtons[index],
                          hover: socialBI == index ? true : false),
                    );
                  },
                ),
              ),
            ),*/
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

  /* Future<void> _launchURL(urli) async {
    var url = urli;
    //const url =
    //   'https://drive.google.com/file/d/1V_dgikOvorZBzhFAt5cqShijqtTg6hfv/view?usp=share_link';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }*/

  /*_launchURL() async {
    const url =
        'https://drive.google.com/file/d/1V_dgikOvorZBzhFAt5cqShijqtTg6hfv/view?usp=share_link';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }*/

 /* Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightGreen, width: 2.0),
        color: Colors.lightBlueAccent,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        AppAssets.email,
        width: 10,
        height: 12,
        color: hover ? Appcolors.bgColor : Appcolors.co,
        // fit: BoxFit.fill,
      ),
    );
  }
}*/
    /*final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Appcolors.bgColor,
      appBar: AppBar(
        backgroundColor: Appcolors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              'Portfolio',
              style: AppTextStyles.h(),
            ),
            Spacer(),
            Text('Home', style: AppTextStyles.h()),
            const SizedBox(
              width: 30,
            ),
            Text('About', style: AppTextStyles.h()),
            const SizedBox(
              width: 30,
            ),
            Text('Services', style: AppTextStyles.h()),
            const SizedBox(
              width: 30,
            ),
            Text('Portfolio', style: AppTextStyles.h()),
            const SizedBox(
              width: 30,
            ),
            Text('Contact', style: AppTextStyles.h()),
          ]),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(
              top: size.height * 0.3,
              left: size.width * 0.1,
              right: size.width * 0.2),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,  it\'s me',
                        style: AppTextStyles.e(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 15.0),
                      Text(
                        'Vaishnavi Sangal',
                        style: AppTextStyles.ei(),
                      ),
                      Constants.sizedBox(height: 15.0),
                      Row(
                        children: [
                          Text(
                            'And I \'m a ',
                            style: AppTextStyles.e(color: Colors.white),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('Flutter Developer',
                                  textStyle:
                                      AppTextStyles.e(color: Colors.lightBlue)),
                              TyperAnimatedText('Learner',
                                  textStyle:
                                      AppTextStyles.e(color: Colors.lightBlue)),
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ],
                      ),
                      Constants.sizedBox(height: 15.0),
                      SizedBox(
                          width: size.width * 0.2,
                          child: FadeInUp(
                            duration: const Duration(milliseconds: 1800),
                            child: AppButtons.buildMaterialButton(
                                onTap: () {}, buttonName: 'About Me'),
                          )),
                      Constants.sizedBox(height: 22.0),
                      Row(
                        children: [
                          buildSocialButton(
                              asset: AppAssets.email, hover: false),
                          buildSocialButton(
                              asset: AppAssets.github, hover: false),
                          buildSocialButton(
                              asset: AppAssets.linkedin, hover: false),
                        ],
                      ),
                      Constants.sizedBox(height: 18.0),
                      MaterialButton(
                          onPressed: () {
                            color:
                            Colors.white;
                          },
                          child: Text('Download Resume',
                              style: AppTextStyles.e(color: Colors.black87))),
                      AboutMe(),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Appcolors.co, width: 2.0),
        color: Appcolors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? Appcolors.bgColor : Appcolors.co,
        // fit: BoxFit.fill,
      ),
    );
  }
}


*/
