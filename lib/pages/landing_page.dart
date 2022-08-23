import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/values/app_assets.dart';
import 'package:flutter_application_1/values/app_colors.dart';
import 'package:flutter_application_1/values/app_styles.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Welcome to', style: AppStyles.h3),
              ),
            ),
            Expanded(
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'English',
                    style: AppStyles.h2.copyWith(
                      color: AppColors.blackGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Qoutes',
                    textAlign: TextAlign.right,
                    style: AppStyles.h4.copyWith(height: 0.5),
                  ),
                ],
              )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 72),
                child: RawMaterialButton(
                    shape: CircleBorder(),
                    fillColor: AppColors.lighBlue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomePage())));
                    },
                    child: Image.asset(AppAssets.rightArrow)),
              ),
            ),
          ]),
        ));
  }
}
