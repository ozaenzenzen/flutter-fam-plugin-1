import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_2/controller/apptheme_controller.dart';
import 'package:flutter_getx_2/controller/incredecre_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScreenUtil screenUtil = ScreenUtil();
  AppThemeController appThemeController = Get.find<AppThemeController>();
  IncreDecreController increDecreController = Get.find<IncreDecreController>();

  Map data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Page"),
          backgroundColor: appThemeController.currentColor.value,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${data['title']}"),
              SizedBox(
                height: screenUtil.setHeight(10),
              ),
              Text("${data['subtitle']}"),
              SizedBox(
                height: screenUtil.setHeight(10),
              ),
              Text("Angka Saat Ini: ${increDecreController.count1.value}"),
            ],
          ),
        ),
      );
    });
  }
}
