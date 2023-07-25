import 'package:app_1/page/home_page.dart';
import 'package:app_1/values/app_assets.dart';
import 'package:app_1/values/app_colors.dart';
import 'package:app_1/values/app_styles.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to',
                  style: AppStyles.h3,
                ),
              )
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
                      ),                     
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Learning',
                        textAlign: TextAlign.right,
                        style: AppStyles.h4.copyWith(height: 0.5),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 64),
                child: RawMaterialButton(
                  fillColor: AppColors.lighBlue,
                  shape: CircleBorder(),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (context) => HomePage()),
                      (route)=> false
                    );
                  },
                  child: Image.asset(AppAssets.rightArrow),
                ),
              )
            )
          ],
        ),
      )
    );
  }
}