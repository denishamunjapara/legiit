import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legiit/Constants/appcolors.dart';

import '../Constants/decoration.dart';
import '../utils/size_utils.dart';

Widget appButton(String buttonText,void Function()? onTap,/*Color? buttonColor*/){
  return InkWell(
    onTap: onTap,
    child: Container(
      height:getVerticalSize(50),
      decoration: BoxDecoration(color: AppColors.blue,borderRadius:AppDecoration.appBorderRadius),
      child: Center(child: Text(buttonText,style: TextStyle(color: AppColors.white,fontSize: getFontSize(17),fontWeight: FontWeight.w300),),),
    ),
  );
}