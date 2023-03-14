// ignore_for_file: unnecessary_import, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables, depend_on_referenced_packages

import 'package:emart_app/HomeSCreen/home.dart';
import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/images.dart';
import 'package:emart_app/views/Auth_Screens/login_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// Mthod for navigation to other pages

  changeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      //usingGetX
      //var Get;
      Get.to(() => const Home());
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icSplashBg,
                  width: 300,
                )),
            20.heightBox,
            applogowidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(10).white.make(),
            const Spacer(),
            credits.text.white.fontFamily(bold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
