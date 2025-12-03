import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppUtils {

  static double getHight(BuildContext context , height){
    return MediaQuery.of(context).size.height * height;
  }
  static double getWidth(BuildContext context , width){
    return MediaQuery.of(context).size.width * width;
  }

  static navigateToPage(BuildContext context, Widget page){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }),);
  }
}

class Go {
  static Future<dynamic> to(dynamic page,
      {dynamic arguments, Transition? transition, int? duration}) async {
    Get.to(
      page,
      arguments: arguments,
      transition: transition ??
          Transition.rightToLeftWithFade,
      duration: Duration(milliseconds: duration ?? 400),
    );
  }
}