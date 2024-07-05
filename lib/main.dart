import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/getx_x.dart';
import 'package:get_x/second_page.dart';
import 'package:get_x/third_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///obj instantiation
    final countGet = Get.put(CounterControlllerGetX());
    return GetMaterialApp(
      ///Named routes
      getPages: [
        GetPage(name: '/main', page: ()=>MyApp(),),
        GetPage(name: '/second', page: ()=>SecondPage(),),
        GetPage(name: '/third', page: ()=>ThirdPage(),),
      ],
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((){
              return Text('Count is  =  ${countGet.count}');
            }),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  countGet.increment();
                }, child: Text('INcrement')),
                ElevatedButton(
                  child: Text('Show Snackbar'),
                  onPressed: () {
                    Get.showSnackbar( GetSnackBar(
                      title: 'hai',
                      message: 'jhfj',
                      duration: Duration(seconds: 3),
                    ));
                  },
                ),
               ElevatedButton(onPressed: (){
                  countGet.reset();
                }, child: Text('REset')),
              ],
            ),
            ElevatedButton(
              child: Text('Show Snackbar'),
              onPressed: () {
                Get.snackbar(
                  'Hello',
                  'This is a message',
                  icon: Icon(Icons.notification_important),
                  shouldIconPulse: true,
                  onTap: (val) {
                    print('Snackbar was tapped');
                  },
                  barBlur: 20,
                  isDismissible: true,
                  duration: const Duration(seconds: 3),
                );
              },
            ),
            ElevatedButton(onPressed: (){ Get.toNamed('/second');
            }, child: Text("go to Second Screen"))

          ],
        ),
      ),
    );
  }
}
