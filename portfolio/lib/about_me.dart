import 'package:flutter/material.dart';
import 'package:portfolio/app_assets.dart';
import 'package:portfolio/app_colors.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/helper_class.dart';
import '../app_buttons.dart';
import '../app_text_styles.dart';
import 'package:animate_do/animate_do.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35.0),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Appcolors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'About ',
              style: AppTextStyles.ei(fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'Me !',
                  style: AppTextStyles.ei(
                      fontSize: 30, color: Appcolors.robinEdgeBlue),
                )
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 10.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter Developer !',
            style: AppTextStyles.e(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Hello! My name is Vaishnavi Sangal, an undergraduate'
            ' engineering pre final year student pursuing B.Tech in'
            'Computer Science and Engineering from KIET Group of '
            'Institutions Ghaziabad. I am a self motivated keen learner'
            'who is always interested in learning more and more about her'
            'areas of interest and domain. I am excited to be part of a '
            'team which is dedicated towards pushing the boundaries of '
            'technology.I am very passionate about improving my coding '
            'skills & developing apps.',
            style: AppTextStyles.normal(),
          ),
        ),
      ],
    );
  }
}
