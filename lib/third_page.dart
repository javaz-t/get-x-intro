import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/getx_x.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    //it will find where CounterControlllerGetX and   is used to find a Controller that is being used by another page and allows you to access its properties and methods.
    final CounterControlllerGetX controllerGEtX = Get.find();
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Valut form first screen = ${controllerGEtX.count}'),
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text('to back'))

        ],
      ),
    );
  }
}
