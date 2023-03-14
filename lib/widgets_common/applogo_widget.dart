// ignore_for_file: depend_on_referenced_packages

import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogowidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(78, 78)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
