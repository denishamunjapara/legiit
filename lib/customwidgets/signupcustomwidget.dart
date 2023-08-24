

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legiit/utils/size_utils.dart';

import '../Constants/appcolors.dart';
import '../Helpers/strings.dart';


 Widget twoFAuthCustomWidget(bool value,void Function(bool)? onChanged){
  return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

    Text(AppStrings.twoFactorAuth,style: TextStyle(fontSize: getFontSize(15),color: AppColors.white)),

      SizedBox(
        width: getHorizontalSize(45),
        height: getVerticalSize(30),
        child: FittedBox(
          fit: BoxFit.fill,
          child: CupertinoSwitch(
            thumbColor: AppColors.originalGrey,
             trackColor: AppColors.white,
             //focusColor: AppColors.white,
               //trackColor: AppColors.indigo,
              //inactiveThumbColor: AppColors.white,
             // inactiveTrackColor: AppColors.originalGrey,
              activeColor: AppColors.indigo,
             // activeTrackColor: AppColors.white,
             // value: value,
             // overlayColor: MaterialStateProperty.all(AppColors.white),
              //activeColor: AppColors.grey,
             // onChanged: onChanged,

          value: value, onChanged: onChanged)


          // Switch(
          //   inactiveThumbColor: AppColors.white,
          //   inactiveTrackColor: AppColors.originalGrey,
          //   activeColor: AppColors.indigo,
          //   activeTrackColor: AppColors.white,
          //   value: value,
          //   overlayColor: MaterialStateProperty.all(AppColors.white),
          //   //activeColor: AppColors.grey,
          //   onChanged: onChanged,
          // ),
        ),
      ),


    // Container(height: getVerticalSize(25),width: getHorizontalSize(55),decoration: BoxDecoration(color: AppColors.white,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(30)),
    //   child:
    // //   Row(children: [
    // //
    // //
    // //   // InkWell(
    // //   //   onTap: () {
    // //   //     isClicked=true;
    // //   //   },
    // //   //   child: Container(
    // //   //     height:  getVerticalSize(20),
    // //   //     width: getHorizontalSize(25),
    // //   //     decoration: BoxDecoration(color:isClicked==true? AppColors.blue:AppColors.white,shape: BoxShape.circle),
    // //   //   ),
    // //   // ),
    // //   // InkWell(
    // //   //   onTap: () {
    // //   //     isClicked=false;
    // //   //   },
    // //   //   child: Container(
    // //   //     height:  getVerticalSize(20),
    // //   //     width: getHorizontalSize(25),
    // //   //     decoration: BoxDecoration(color: isClicked==false? AppColors.blue:AppColors.white,shape: BoxShape.circle),
    // //   //   ),
    // //   // )
    // // ],
    //
    //   ),)


  ],);
}

Widget privacyCheckCustomWidget(bool? checkBoxValue,void Function(bool?)? onChanged){

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
   children: [

     FormField(
       autovalidateMode: AutovalidateMode.onUserInteraction,
       builder: (state) {
         return Column(
           children: [
             Row(
               children:[
                 Container(

                   height: getVerticalSize(20),
                   width: getHorizontalSize(20),
                  // color:AppColors.white,
                   child: Checkbox(
                       value: checkBoxValue,
                       onChanged: onChanged),
                 ),

               ],
             ),
             // SizedBox(
             //     height: getVerticalSize(5),
             // //    child: const Text('Fill')
             // ),
//display error in matching theme
             Text(
               state.errorText ?? '',
               style: const TextStyle(
                 color: Colors.red,
               ),
             )
           ],
         );
       },
//output from validation will be displayed in state.errorText (above)
       validator: (value) {
         if (!checkBoxValue!) {
           return 'Required';
         } else {
           return null;
         }
       },
     ),

    /* FormField(
       validator:  (value) {
         print('Checkbox value : $value');

           // if (value ==null) {
           //   return 'You need to accept terms';
           // } else {
           //   return null;
           // }
       },
        builder: (field) {
          return  SizedBox(
            height: getVerticalSize(20),
            //color: AppColors.white,
            child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.comfortable,
                checkColor: AppColors.black,
                value:checkBoxValue ,
                activeColor: AppColors.blue,
                onChanged:onChanged
            ),
          );
        },

     ),*/
     SizedBox(width: getHorizontalSize(10),),
Flexible(
  child:   Text.rich(
     softWrap: true,
      TextSpan(
      children: [
        TextSpan(
          text: 'Terms And Services',style: TextStyle(color: AppColors.blue, decoration: TextDecoration.underline,decorationColor: AppColors.blue)
        ),
        const TextSpan(text: ' and ')
        ,TextSpan(text: "Privacy Policy",style: TextStyle(color: AppColors.blue,decorationColor: AppColors.blue,decoration: TextDecoration.underline))
      ],
      text: 'I agree to the ',style: TextStyle(color: AppColors.white))),
),
  ],);
}