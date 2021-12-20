import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_is_the_correct_number/config/themes.dart';
import 'package:what_is_the_correct_number/controllers/home_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const CustomAppBar({Key? key}) : super(key: key);

    @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.all(10.0),
       child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text(
            '''What is the Correct
           Number''',
          style: TextStyle(fontSize: 26.0),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.grey[400],
          actions: [
            IconButton(
              onPressed: () {
                controller.onChangeTheme();
                Get.changeTheme(
                    controller.isLight ? Themes.lightTheme : Themes.darkTheme);
              },
              icon: Icon(Icons.brightness_4_outlined),
            ),
          ],
        ),
      ),


     
     
     
     
     
     
     
     
     
     
     
     
     
      // child: Container(
      //   child: Row(
         
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          
      //      children: [
      //     Text(
      //       '''What is the Correct
      //      Number''',
      //      style: TextStyle(fontSize: 28.0),
      //     ),
      //      IconButton(
      //         onPressed: () {
      //           controller.onChangeTheme();
      //           Get.changeTheme(
      //               controller.isLight ? Themes.lightTheme : Themes.darkTheme);
      //         },
      //         icon: Icon(Icons.brightness_4_outlined),
      //       ),

      //   ],),
      // ),
      //
    );
  }



 
}
