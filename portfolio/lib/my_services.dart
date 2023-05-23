import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'app_assets.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'constants.dart';
import 'helper_class.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Container(
        height: 1000,
        width: double.infinity,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            buildMyServicesText(),
            Constants.sizedBox(height: 60.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildAnimatedContainer(
                    width: 150,
                    title: 'C++',
                    asset: AppAssets.c,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Java',
                    asset: AppAssets.java,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Python',
                    asset: AppAssets.py,
                    hover: isGraphic,
                  ),
                ],
              ),
            ),
            Constants.sizedBox(height: 24.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildAnimatedContainer(
                    width: 150,
                    title: 'HTML',
                    asset: AppAssets.html,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'CSS',
                    asset: AppAssets.css,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'MySql',
                    asset: AppAssets.mysql,
                    hover: isApp,
                  ),
                ],
              ),
            ),
            Constants.sizedBox(height: 24.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Flutter',
                    asset: AppAssets.flutter,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Firebase',
                    asset: AppAssets.firebase,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Dart',
                    asset: AppAssets.dart,
                    hover: isGraphic,
                  ),
                ],
              ),
            ),
            Constants.sizedBox(height: 24.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Github',
                    asset: AppAssets.github,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'VS Code',
                    asset: AppAssets.vs,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Figma',
                    asset: AppAssets.figma,
                    hover: isGraphic,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'HTML',
                  asset: AppAssets.html,
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'CSS',
                  asset: AppAssets.html,
                  hover: isGraphic,
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Dart',
              asset: AppAssets.html,
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          )
        ],
      ),
      desktop: Container(
        height: 1000,
        width: double.infinity,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            buildMyServicesText(),
            Constants.sizedBox(height: 60.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAnimatedContainer(
                    width: 200,
                    title: 'C++',
                    asset: AppAssets.c,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Java',
                    asset: AppAssets.java,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Python',
                    asset: AppAssets.py,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Github',
                    asset: AppAssets.github,
                    hover: isGraphic,
                  ),
                ],
              ),
            ),
            Constants.sizedBox(height: 24.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAnimatedContainer(
                    width: 150,
                    title: 'HTML',
                    asset: AppAssets.html,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'CSS',
                    asset: AppAssets.css,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'MySql',
                    asset: AppAssets.mysql,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'VS Code',
                    asset: AppAssets.vs,
                    hover: isGraphic,
                  ),
                ],
              ),
            ),
            Constants.sizedBox(height: 24.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Flutter',
                    asset: AppAssets.flutter,
                    hover: isApp,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Firebase',
                    asset: AppAssets.firebase,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Dart',
                    asset: AppAssets.dart,
                    hover: isGraphic,
                  ),
                  SizedBox(width: 20),
                  buildAnimatedContainer(
                    width: 150,
                    title: 'Figma',
                    asset: AppAssets.figma,
                    hover: isGraphic,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      paddingWidth: size.width * 0.04,
      bgColor: Appcolors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'My ',
          style: AppTextStyles.ei(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Skills',
              style: AppTextStyles.ei(
                  fontSize: 30.0, color: Appcolors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 300,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      // width: hover ? hoverWidth : width,
      //height: hover ? 390 : 380,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: Appcolors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border: hover ? Border.all(color: Appcolors.co, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Container(
        height: 150,
        child: Column(
          children: [
            Image.asset(
              asset,
              width: 50,
              height: 50,
              // color: Appcolors.co,
            ),
            Constants.sizedBox(height: 30.0),
            Text(
              title,
              style: AppTextStyles.h(),
            ),
          ],
        ),
      ),
    );
  }
}
