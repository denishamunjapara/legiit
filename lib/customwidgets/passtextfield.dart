import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/appcolors.dart';
import '../Constants/decoration.dart';
import '../utils/size_utils.dart';


Widget appPassTextField(String labelText, String? hintText,Widget? suffixIcon,bool obscureText,void Function()? iconOnTap){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: getVerticalSize(20),),
      Text(labelText,style: TextStyle(fontSize: getFontSize(15),color: AppColors.white)),
      SizedBox(height:  getVerticalSize(5),),
      TextFormField(autovalidateMode: AutovalidateMode.onUserInteraction,

        validator: (value) {
          if(value!.isNotEmpty){
            return null;
          }else{
            return 'Fill The Field';
          }
        },
        obscureText: obscureText,
        cursorColor: AppColors.blue,
        style: TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          suffixIcon: InkWell(
              onTap:iconOnTap ,
              child: suffixIcon),
            contentPadding:const EdgeInsets.all(17),
            hintStyle: TextStyle(color: AppColors.originalGrey,fontSize: getFontSize(12)),
            hintText: hintText,
            isDense: true,
            border: const OutlineInputBorder(),enabledBorder: OutlineInputBorder(borderRadius: AppDecoration.appBorderRadius,borderSide: BorderSide(color: AppColors.grey)), focusedBorder: OutlineInputBorder(borderRadius: AppDecoration.appBorderRadius,borderSide: BorderSide(color: AppColors.blue))),
      ),
    ],
  );
}