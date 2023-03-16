// ignore_for_file: depend_on_referenced_packages

// ignore: unused_import
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
Widget build(BuildContext context) {
  // here, Scaffold.of(context) returns null
  return Scaffold(
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
    body: Builder(
      builder: (BuildContext context) {
        return TextButton(
          child: const Text('Show Cart'),
          onPressed: () {
            Scaffold.of(context).showBottomSheet<void>(
              (BuildContext context) {
                return Container(
                  alignment: Alignment.center,
                  height: 200,
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('Your Cart is Empty'),
                        ElevatedButton(
                          child: const Text('Continue Shopping'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    )
  );
}
}