// @dart=2.9

// ignore: unused_import
// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, unnecessary_new, sort_child_properties_last, prefer_typing_uninitialized_variables, unused_element, dead_code, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, prefer_final_fields, duplicate_import, avoid_unnecessary_containers, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe

//import 'package:carousel_pro/carousel_pro.dart';
//import 'package:first_version_ecommerce/loginScreen/loginscreen.dart';
//import 'package:first_version_ecommerce/main.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'Footer.dart';
//import 'package:footer/footer.dart';
//import 'package:footer/footer_view.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carousel_slider/carousel_slider.dart';

// //void main()=> runApp(MyApp());
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

  
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
// final List<String> images = [
//   'assets/smartshop.png',
//    'assets/smartshop.png',
   
   
// ];


// // class _HomeScreenState extends State<HomeScreen> {
 


//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(

//      appBar: AppBar(
      
//       backgroundColor: Color.fromARGB(255, 150, 189, 10),
//       //Color.fromARGB(255, 238, 236, 231),
//       title: Text("Smart Shopping", style: TextStyle(color: Colors.black,)),
//       iconTheme: IconThemeData(color: Colors.black),
//       //leading: Image.asset("your_image_asset"),
//       actions: <Widget>[
//         IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: () {}),
//         IconButton(icon: Icon(Icons.mic, color: Colors.black,), onPressed: () {}),
//         IconButton(icon: Icon(Icons.camera_alt_outlined, color: Colors.black,), onPressed: () {}),

//       ],
    

//     ),
    
    
//     bottomNavigationBar: Footer(),
//     );
//     //==============================================================
    
//     //===============================================================
//   }

// }

void main(){
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final List<String> images = [
    //   'assets/images/slide1.png',
    //   'assets/images/slide2.png',
      
    // ];

    return Scaffold(
     appBar: AppBar(
      
  backgroundColor: Color.fromARGB(255, 179, 234, 238),
       //Color.fromARGB(255, 238, 236, 231),
      title: Text("Smart Shopping", style: TextStyle(color: Colors.black,)),
      iconTheme: IconThemeData(color: Colors.black),
      //leading: Image.asset("your_image_asset"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: () {}),
IconButton(icon: Icon(Icons.mic, color: Colors.black,), onPressed: () {}),
         IconButton(icon: Icon(Icons.camera_alt_outlined, color: Colors.black,), onPressed: () {}),

       ],
      

    ),
     //bottomNavigationBar: Footer(),
    );
  }
}