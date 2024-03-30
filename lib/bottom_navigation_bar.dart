import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import 'controller.dart';


class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    BottomNavigationController bottomNavController = Get.put(BottomNavigationController());

    return Container(
      height: 60,
      width: Get.width,
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: _buildBottomNavigationBar(bottomNavController),
            body: Obx(() {
              return bottomNavController.bottomNavBarItems[bottomNavController.currentBottomNavigationIndex.value];
            }),
          )),
    );
  }

  _buildBottomNavigationBar(BottomNavigationController bottomNavigationController) {
    return Material(
      // borderRadius: const BorderRadius.only(
      //   topLeft: Radius.circular(24),
      //   topRight: Radius.circular(24),
      // ),
      elevation: 20,
      color: Colors.white,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Obx(() {
        return Container(
          color: Colors.white,
          child: BottomNavigationBar(
              selectedLabelStyle: const TextStyle(
                  fontWeight:FontWeight.w500,
                fontSize: 16
          ),
              selectedFontSize: 14,
              iconSize: 30,
              selectedItemColor: Colors.blueGrey,
              elevation: 1,
              currentIndex: bottomNavigationController.currentBottomNavigationIndex.value,
              onTap: (int index) {
                setState(() {
                  bottomNavigationController.currentBottomNavigationIndex.value = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              items:[
                bottomNavigationController.currentBottomNavigationIndex.value != 0 ?
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label:'Home',
                )
                    :const BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 36,),
                  label:'Home',
                ),
                bottomNavigationController.currentBottomNavigationIndex.value != 1 ?
                const BottomNavigationBarItem(
                  icon:  Icon(Icons.favorite_border,),
                  label:'Saved',
                ) :const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,size: 36,),
                  label:'Saved',
                ),
                (bottomNavigationController.currentBottomNavigationIndex.value != 2) ?
                const BottomNavigationBarItem(
                  icon:  Icon(Icons.person_outline),
                  label:'Profile',
                ) : const BottomNavigationBarItem(
                  icon:  Icon(Icons.person,size: 36,),
                  label:'Profile',
                ),
              ]),
        );
        /* DotNavigationBar(
          currentIndex: bottomNavigationController.currentBottomNavigationIndex.value,
          onTap: (int index) {
            setState(() {
              bottomNavigationController.currentBottomNavigationIndex.value = index;
            });
          },
          dotIndicatorColor: Colors.red,
          items: [
            DotNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              selectedColor: Colors.red,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.account_circle_outlined),
              selectedColor: Colors.red,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              selectedColor: Colors.red,
            ),
          ],
        );*/
      }
      ),
    );
  }
}