import 'package:flutter/material.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:portfolio/main_dashboard.dart';
import 'app_colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Appcolors.bgColor2,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Developed by Vaishnavi',
            style: AppTextStyles.h(),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 450),
          GestureDetector(
            child: InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const MainDashBoard()),
                  (Route<dynamic> route) => false,
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainDashBoard()));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolors.co),
                child: const Icon(
                  Icons.arrow_upward,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
