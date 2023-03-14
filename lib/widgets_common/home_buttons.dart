// ignore_for_file: depend_on_referenced_packages

import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({width, height, icon, String? title, onpress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
