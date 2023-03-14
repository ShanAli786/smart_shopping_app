import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "0".text.fontFamily(bold).color(whiteColor).size(16).make(),
      5.heightBox,
      "In your cart".text.color(whiteColor).make(),
    ],
  )
      .box
      .black
      .rounded
      .height(80)
      .width(width)
      .padding(const EdgeInsets.all(4))
      .make();
}
