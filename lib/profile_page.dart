import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme:  IconThemeData(
            color: Colors.black,
            size: 38
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text("Profile",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),)),
                  const SizedBox(height: 12,),
                  Center(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 1),
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: const Icon(Icons.person_outline,size: 36,color: Colors.white,),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: Get.height *0.07,
                            width: Get.width *0.9,
                            padding: EdgeInsets.only(top:10,bottom: 10),
                            margin: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      offset: Offset(8,8),
                                      color: Colors.black.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                      blurRadius: 4,
                                      offset: Offset(-2,-1),
                                      color: Colors.black.withOpacity(0.1)
                                  ),
                                ]
                            ),
                            alignment: Alignment.center,
                            child: Text("Pranusha buchakka",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                height: Get.height *0.08,
                                width: Get.width *0.41,
                                padding:const EdgeInsets.only(top:10,bottom: 10),
                                margin:const EdgeInsets.only(left: 10,right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          offset: Offset(1,1),
                                          color: Colors.black.withOpacity(0.1)
                                      ),
                                      BoxShadow(
                                          blurRadius: 4,
                                          offset: Offset(0,0),
                                          color: Colors.black.withOpacity(0.1)
                                      ),
                                    ]
                                ),
                                alignment: Alignment.center,
                                child: const Text("Share",style: TextStyle(fontSize: 14,color: Colors.grey),),
                              ),
                              Container(
                                height: Get.height *0.08,
                                width: Get.width *0.41,
                                padding: const EdgeInsets.only(top:10,bottom: 10),
                                margin: const EdgeInsets.only(left: 10,right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          offset: const Offset(1,1),
                                          color: Colors.black.withOpacity(0.1)
                                      ),
                                      BoxShadow(
                                          blurRadius: 4,
                                          offset: const Offset(0,0),
                                          color: Colors.black.withOpacity(0.1)
                                      ),
                                    ]
                                ),
                                alignment: Alignment.center,
                                child:const Text("Contact us",style: TextStyle(fontSize: 14,color: Colors.grey),),
                              ),

                            ],
                          ),
                          Container(
                            height: Get.height *0.07,
                            width: Get.width *0.9,
                            padding: const EdgeInsets.only(top:10,bottom: 10),
                            margin: const EdgeInsets.only(left: 10,top: 24,right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      offset:const Offset(3,3),
                                      color: Colors.black.withOpacity(0.1)
                                  ),
                                  BoxShadow(
                                      blurRadius: 4,
                                      offset:const Offset(-3,-3),
                                      color: Colors.black.withOpacity(0.1)
                                  ),
                                ]
                            ),
                            alignment: Alignment.center,
                            child:const Text("About us",style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w500),),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 60,),
                  Center(
                    child: Container(
                      width: 100,
                      padding:const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      alignment: Alignment.center,
                      child: Text("LOGOUT",style: TextStyle(color: Colors.black,fontSize: 18),),
                    ),
                  )
                ]
            ),
          )
      ),
    );

  }
}
