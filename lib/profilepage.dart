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
          title: const Text("Product Detail Page"),
          backgroundColor: appThemeController.currentColor.value,
          elevation: 0,
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
              SizedBox(
                height: screenUtil.setHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        increDecreController.increment1();
                        increDecreController.increment2();
                      });
                    },
                  ),
                  SizedBox(
                    width: screenUtil.setWidth(10),
                  ),
                  profileButton(
                    child: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        increDecreController.decrement1();
                        increDecreController.decrement2();
                      });
                    },
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       increDecreController.increment1();
                  //       increDecreController.increment2();
                  //     });
                  //   },
                  //   child: const Icon(Icons.add),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: appThemeController.currentColor.value,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: screenUtil.setWidth(10),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       increDecreController.decrement1();
                  //       increDecreController.decrement2();
                  //     });
                  //   },
                  //   child: const Icon(Icons.remove),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: appThemeController.currentColor.value,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget profileButton({Widget? child, void Function()? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // minimumSize: Size(screenUtil.setWidth(40), screenUtil.setHeight(40)),
        // shape: const CircleBorder(),
        primary: appThemeController.currentColor.value,
      ),
    );
  }
}
