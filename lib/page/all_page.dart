import 'package:app_1/models/english_today.dart';
import 'package:flutter/material.dart';

import '../values/app_assets.dart';
import '../values/app_colors.dart';
import '../values/app_styles.dart';

class AllWordPage extends StatelessWidget {
  final List<EnglishToday> words;
  const AllWordPage({super.key, required this.words});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColors.secondColor,
    appBar: AppBar(
      backgroundColor: AppColors.secondColor,
      centerTitle: true,
      elevation: 0,
      title: Text(
        'English Today',
        style: AppStyles.h3.copyWith(
          color: AppColors.textColor,
          fontSize: 36
        )
      ),  
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Image.asset(AppAssets.leftArrow),
      ),
    ),
      body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                color: index % 2 == 0 ? AppColors.primaryColor : AppColors.secondColor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                title: Text(
                  words[index].noun!,
                  style: index % 2 == 0 ? AppStyles.h4 : AppStyles.h4.copyWith(
                    color: AppColors.textColor
                  ),
                ),
                subtitle: Text(
                  words[index].qoute ?? 'Think of all the beauty still left around you and be happy.',
                ),
                leading: Icon(
                  Icons.favorite,
                  color: words[index].isFavorite ? Colors.red : Colors.grey, 
                ),
              ),
            );
          })
      );
  }
}