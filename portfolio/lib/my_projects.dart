import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_buttons.dart';
import 'helper_class.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onH0verEffect = Matrix4.identity()..scale(1.0);

  var hoveredIndex;
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () => launchURL(
                url:
                    'https://drive.google.com/file/d/1dnnAlnJilQo0ArU9NXctP1PmiCcfJgcN/view'),
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              link:
                  'https://drive.google.com/file/d/1dnnAlnJilQo0ArU9NXctP1PmiCcfJgcN/view',
              description:
                  'It is a Women Security App that lets them take a leap that they can count on someone and I made sure that “SOMEONE” will be none other but their own contacts which they can send alerts, locations, and much more.',
              title: 'Women Security App',
              asset: AppAssets.p1,
              hover: isApp,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () => launchURL(
                url:
                    'https://github.com/vaishnavi-sangal/TMDB_API/tree/main/movie_app'),
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: buildAnimatedContainer(
              link:
                  'https://github.com/vaishnavi-sangal/TMDB_API/tree/main/movie_app',
              description:
                  'A movie app which fetches data from TMDB_API to show the trending movies,tv shows and top rated movies.',
              title: 'Movie App',
              asset: AppAssets.p2,
              hover: isGraphic,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () =>
                launchURL(url: 'https://github.com/vaishnavi-sangal/instagram'),
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              link: 'https://github.com/vaishnavi-sangal/instagram',
              description:
                  'This is Open Source Instagram Clone made using Flutter and Firebase.',
              title: 'Picstagram',
              asset: AppAssets.p3,
              hover: isDataAnalyst,
            ),
          )
        ],
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
                  link: '',
                  description: '',
                  title: 'App Development',
                  asset: AppAssets.p1,
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
                  link: '',
                  description: '',
                  title: 'Graphic Designing',
                  asset: AppAssets.p2,
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
              link: '',
              description: '',
              title: 'Digital Marketing',
              asset: AppAssets.p3,
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Constants.sizedBox(width: 20.0),
              InkWell(
                onTap: () => launchURL(
                    url:
                        'https://drive.google.com/file/d/1dnnAlnJilQo0ArU9NXctP1PmiCcfJgcN/view'),
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  link:
                      'https://drive.google.com/file/d/1dnnAlnJilQo0ArU9NXctP1PmiCcfJgcN/view',
                  description:
                      'It is a Women Security App that lets them take a leap that they can count on someone and I made sure that “SOMEONE” will be none other but their own contacts which they can send alerts, locations, and much more.',
                  title: 'Women Security App',
                  asset: AppAssets.p1,
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 20.0),
              InkWell(
                onTap: () => launchURL(
                    url:
                        'https://github.com/vaishnavi-sangal/TMDB_API/tree/main/movie_app'),
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  link:
                      'https://github.com/vaishnavi-sangal/TMDB_API/tree/main/movie_app',
                  description:
                      'A movie app which fetches data from TMDB_API to show the trending movies,tv shows and top rated movies.',
                  title: 'Movie App',
                  asset: AppAssets.p2,
                  hover: isGraphic,
                ),
              ),
              Constants.sizedBox(width: 20.0),
              InkWell(
                onTap: () => launchURL(
                    url: 'https://github.com/vaishnavi-sangal/instagram'),
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainer(
                  link: 'https://github.com/vaishnavi-sangal/instagram',
                  description:
                      'This is Open Source Instagram Clone made using Flutter and Firebase.',
                  title: 'Picstagram',
                  asset: AppAssets.p3,
                  hover: isDataAnalyst,
                ),
              )
            ],
          ),
        ],
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
              text: 'Projects',
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
    double width = 350,
    double hoverWidth = 360,
    required description,
    required String link,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: 500,
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
        height: 2000,
        child: Column(
          children: [
            Image.asset(
              asset,
              width: 80,
              height: 100,
              // color: Appcolors.co,
            ),
            Constants.sizedBox(height: 28.0),

            Text(
              title,
              style: AppTextStyles.ei(color: Colors.white, fontSize: 22.0),
            ),

            Constants.sizedBox(height: 5.0),
            Text(
              description,
              style: AppTextStyles.h(),
              textAlign: TextAlign.center,
            ),
            Constants.sizedBox(height: 15.0),
            AppButtons.buildMaterialButton(
                buttonName: 'Read More', onTap: () => launchURL(url: link)),
            //=> launchUrl(link))
          ],
        ),
      ),
    );
  }
}

Future<void> launchURL({required String url}) async {
  // const url =
  //   'https://drive.google.com/file/d/1V_dgikOvorZBzhFAt5cqShijqtTg6hfv/view?usp=share_link';
  if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
}
