import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Second Screen'),
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text('to back')),
          ElevatedButton(onPressed: (){
            Get.toNamed('/third');
          }, child: Text('toThird Page'))

        ],
      ),
    );
  }
}
