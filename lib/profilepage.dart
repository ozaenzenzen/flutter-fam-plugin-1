import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_2/controller/apptheme_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AppThemeController appThemeController = Get.find<AppThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: appThemeController.currentColor.value,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text("Profile Page"),
      ),
    );
  }
}