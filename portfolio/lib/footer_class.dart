import 'package:flutter/material.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:portfolio/main.dart';
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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Appcolors.bgColor),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        children: [
          Text(
            'Developen by Vaishnavi',
            style: AppTextStyles.h(),
          ),
          SizedBox(
            width: 30,
          ),
          GestureDetector(
            child: IconButton(
              onPressed: () => MainDashBoard(),
              icon: Icon(Icons.arrow_upward),
              iconSize: 25,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
