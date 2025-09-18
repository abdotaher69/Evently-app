import 'package:evently_online_sat/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PagesOfOnbarding {
  static  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      titleWidget: SizedBox(height: 0,),
      bodyWidget:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(ImageAssets.onbording1, height: 50.h,fit: BoxFit.fill,)),
          SizedBox(height: 20.0.h),
          Align(
            alignment: Alignment.center,
            child: Image.asset(ImageAssets.beingCreative, height: 331.h,width:double.infinity,fit: BoxFit.fill)),
          Text("Being Creative",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
          SizedBox(height: 10.h,),
          Text("Discover and join events that match your interests and passions.",style: TextStyle(fontSize: 16.sp),)
        ],
      ) ,
      
     
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "Explore Events",
      body: "Browse through a variety of events and find what interests you.",
      image: Center(child: Image.asset(ImageAssets.eventlyLogo, height: 175.0)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "Join the Fun",
      body: "Sign up and start attending events that you love.",
      image: Center(child: Image.asset(ImageAssets.eventlyLogo, height: 175.0)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16.0),
        pageColor: Colors.white,
      ),
    ),
  ];
}