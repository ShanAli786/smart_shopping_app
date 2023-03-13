// ignore_for_file: unnecessary_import, non_constant_identifier_names, avoid_types_as_parameter_names, unused_import

import 'package:emart_app/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(

        //backgroundColor: const Color.fromARGB(255, 244, 245, 247),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: darkFontGrey),
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.share), color: Colors.black,),
        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline),color: Colors.black,),
        ],
        
      ),

      body: Column(
        children: [
          Expanded(child: Padding(padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  //swiper section

                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    aspectRatio: 16/9,
                    itemCount: 4, itemBuilder: (context,index){
                    return Image.asset(imgFc1, width: double.infinity, fit: BoxFit.cover,);
                  }),
                  10.heightBox,
                  //===============Title and Details section======================
                  title!.text.size(18).color(darkFontGrey).fontFamily(bold).make(),
                  //Rating=====================================================
                  10.heightBox,
                  VxRating(onRatingUpdate: (Value){},normalColor: textfieldGrey, selectionColor: golden,maxRating: 5,size: 25,stepInt: true,),
//dfsdfsdfsfs
//ok
                ],
              ),
          ),
          )),
        ],
      ),


    );
  }
}