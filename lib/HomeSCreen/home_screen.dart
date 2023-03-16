// ignore_for_file: avoid_unnecessary_containers, unnecessary_string_escapes, duplicate_ignore

import 'package:emart_app/HomeSCreen/components/featured_button.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';
import 'package:flutter/material.dart';

import '../consts/list.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //================================App Bar=========================================================================================

    //=================================================================================================================================
    
       Container(
         child: Scaffold(
             appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 179, 234, 238),
           //Color.fromARGB(255, 238, 236, 231),
          title: const Text("Smart Shopping", style: TextStyle(color: Colors.black,)),
          iconTheme: const IconThemeData(color: Colors.black),
          //leading: Image.asset("your_image_asset"),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search, color: Colors.black,), onPressed: () {}),
           IconButton(icon: const Icon(Icons.mic, color: Colors.black,), onPressed: () {}),
             IconButton(icon: const Icon(Icons.camera_alt_outlined, color: Colors.black,), onPressed: () {}),
           
           ],
          
           
           
             ),
           ),
       );
    
    return Center(
      child: Container(
          color: lightGrey,
          width: context.screenWidth,
          height: context.screenHeight,
          
          child: Column(
            children: [
              // Container(
              //   height: 40,
              //   width: double.infinity,
              //   color: lightGrey,
              //   child: TextFormField(
              //     decoration: const InputDecoration(
              //       border: InputBorder.none,
              //       suffixIcon: Icon(Icons.search),
              //       filled: true,
              //       fillColor: whiteColor,
              //       hintText: searchanything,
              //       hintStyle: TextStyle(color: textfieldGrey),
              //     ),
              //   ),
              // ),
              
            
              10.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 150,
                          enlargeCenterPage: true,
                          itemCount: slidersList.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              slidersList[index],
                              fit: BoxFit.fitWidth,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(const EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                      10.heightBox,
                      //deals Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            2,
                            (index) => homeButtons(
                                  height: context.screenHeight * 0.12,
                                  width: context.screenWidth / 2.5,
                                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                  title: index == 0 ? todayDeal : flashsale,
                                )),
                      ),
                      10.heightBox,
                      VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 150,
                          enlargeCenterPage: true,
                          itemCount: secondSlidersList.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              secondSlidersList[index],
                              fit: BoxFit.fitWidth,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(const EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            3,
                            (index) => homeButtons(
                                  height: context.screenHeight * 0.12,
                                  width: context.screenWidth / 3.4,
                                  icon: index == 0
                                      ? icTopCategories
                                      : index == 1
                                          ? icBrands
                                          : icTopSeller,
                                  title: index == 0
                                      ? topCategories
                                      : index == 1
                                          ? brand
                                          : topsellers,
                                )),
                      ),
                      //**********************Featured Cateogries */
                      20.heightBox,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: featuredcategories.text
                            .color(darkFontGrey)
                            .size(20)
                            .fontFamily(semibold)
                            .make(),
                      ),
                      20.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              3,
                              (index) => Column(
                                    children: [
                                      featuredButton(
                                          icon: featuredImages1[index],
                                          title: featuredTitle1[index]),
                                      10.heightBox,
                                      featuredButton(
                                          icon: featuredImages2[index],
                                          title: featuredTitle2[index]),
                                    ],
                                  )),
                        ),
                      ),
    
                      //**************************Featured Products */
    
                      20.heightBox,
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Colors.lightBlueAccent),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            featuredproducts.text.white
                                .fontFamily(bold)
                                .size(20)
                                .make(),
                            10.heightBox,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    6,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              imgFc7,
                                              width: 150,
                                              fit: BoxFit.cover,
                                            ),
                                            10.heightBox,
                                            "Women Dresses"
                                                .text
                                                .fontFamily(semibold)
                                                .color(darkFontGrey)
                                                .make(),
                                            10.heightBox,
                                            "\$500"
                                                .text
                                                .color(redColor)
                                                .fontFamily(semibold)
                                                .size(16)
                                                .make(),
                                          ],
                                        )
                                            .box
                                            .white
                                            .margin(const EdgeInsets.symmetric(
                                                horizontal: 4))
                                            .padding(const EdgeInsets.all(8))
                                            .rounded
                                            .make()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.heightBox,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Allproducts.text
                            .color(Colors.black)
                            .size(20)
                            .fontFamily(semibold)
                            .make(),
                      ),
                      0.heightBox,
                      GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  mainAxisExtent: 300),
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: duplicate_ignore
                              children: [
                                Image.asset(
                                  imgS1,
                                  height: 180,
                                  width: 190,
                                  fit: BoxFit.cover,
                                ),
                                const Spacer(),
                                10.heightBox,
                                "T-shirt"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                10.heightBox,
                                // ignore: unnecessary_string_escapes
                                "\Brand t-shirts with glamrous look \n"
                                "\Pkr: 500"
                                    .text
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .size(16)
                                    .make(),
                              ],
                            )
                                .box
                                .white
                                .margin(const EdgeInsets.symmetric(horizontal: 4))
                                .padding(const EdgeInsets.all(12))
                                .rounded
                                .make();
                          })
                    ],//children
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
