// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seller_app/local%20Notification/notifi_service.dart';
import 'package:seller_app/utils/app_buttons/app_buttons.dart';
import 'package:seller_app/utils/app_colors/app_color.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class local_Notification extends StatelessWidget {
  const local_Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          title: "Winning Rewards",
          color: AppColors.WhiteColor
          ,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: AppButton(buttonName: "Show Notification",
          buttonWidth: 150,
          buttonColor: Colors.blue,
          isShowGradient: false,isShowShadow: false,
           onTap: (){
            NotificationService().showNotification(title: 'Sample',body: 'It works!');
          }),
        ),
      ),
    );
  }
}











