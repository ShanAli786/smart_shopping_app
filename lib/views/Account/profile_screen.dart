//import 'dart:html';

import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/Account/Components/details_card.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:emart_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color.fromARGB(255, 230, 206, 206),
      child: Scaffold(
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.only(top: (30)),
          child: Column(
            children: [
              //Edit Profile Button
              const Align( 
                          alignment: Alignment.topRight,
                          child: Icon(Icons.edit),
                           ).onTap(() {}),

              //User Details Section
              Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy User".text.fontFamily(semibold).black.make(),
                      "customer@example.com"
                          .text
                          .fontFamily(semibold)
                          .black
                          .make(),
                          
                    
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                      ),
                      onPressed: (() {}),
                      child: "Logout".text.fontFamily(semibold).black.make()),
                 
                ],
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: "0",
                      title: "In your Cart",
                      width: context.screenWidth / 3.2),
                 
                ],
              ),
              //Buttons section

              40.heightBox,
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcons[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                  );
                },
              )
                  .box
                  .gray100
                  .rounded
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make(),
            ],
            
          ),
         
        )),
        
      ),
    
    );
    
  }
}
