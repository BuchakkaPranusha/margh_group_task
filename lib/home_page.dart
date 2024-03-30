import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationController controller = Get.find();
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text("Savor the moment, it's afternoon!",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 12,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: Get.width *0.4,
                            height: Get.height *0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.blueGrey
                            ),
                            alignment: Alignment.center,
                            child: Text("Random Quotes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                          ),
                          Container(
                            width: Get.width *0.52,
                            height: Get.height *0.03,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.grey),
                                color: Colors.white
                            ),
                            margin: EdgeInsets.only(left: 8),
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Icon(Icons.search,color: Colors.grey,size: 18,),
                                Icon(Icons.mic,color: Colors.grey,size: 18,),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8,),
                    ]
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: Get.height,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics : const NeverScrollableScrollPhysics(),
                        // controller: controller.pageController,
                        itemCount: controller.today_pics_list.length,
                        itemBuilder: (context,index){
                          return picsContainer(controller.today_pics_list[index]);
                        }),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }

  Widget picsContainer(data){
    return Container(
      height: Get.height *0.8,
      color: data['color'],
      child:Stack(
        children: [
          Center(
            child: Image.asset(
              data['image'],
              height:Get.height,
              width: Get.width *0.95,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // width: Get.width *0.5,
              padding: const EdgeInsets.fromLTRB(16,10,16,10),
              margin: const EdgeInsets.fromLTRB(18,10,18,12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const[
                      Icon(Icons.favorite_border,size: 28,),
                      SizedBox(height: 2,),
                      Text("Save",style: TextStyle(color: Colors.grey,fontSize: 16),)
                    ],
                  ),
                 Column(
                    children: const[
                      Icon(Icons.download,size: 28,),
                      SizedBox(height: 2,),
                      Text("Download",style: TextStyle(color: Colors.grey,fontSize: 16),)
                    ],
                  ),
                  Column(
                    children: const[
                      Icon(Icons.share,size: 28,),
                      SizedBox(height: 2,),
                      Text("Share",style: TextStyle(color: Colors.grey,fontSize: 16),)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ) ,
    );
  }

}
