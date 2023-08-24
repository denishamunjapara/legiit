import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legiit/Constants/appcolors.dart';

import 'package:legiit/Constants/decoration.dart';
import 'package:legiit/utils/size_utils.dart';


// class AppTextfield extends StatefulWidget {
//    AppTextfield({super.key,this.hintText});
//   String? hintText;
//   @override
//   State<AppTextfield> createState() => _AppTextfieldState();
// }
//
// class _AppTextfieldState extends State<AppTextfield> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//         decoration: InputDecoration(
//      hintStyle: TextStyle(color: AppColors.hintTextColor),hintText: widget.hintText,
//        border: const OutlineInputBorder(),enabledBorder: OutlineInputBorder(), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColors.blue))),
//     );
//   }
// }


// Widget customTextField(
//     IconData icon,
//     Color borderColor,
//     String labelText,
//     FocusNode focusNode,
//     TextEditingController controller,
//
//     TextInputType keyboardType) {
//   return Row(
//     children: [
//       Container(
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           child: Icon(icon)),
//       Expanded(
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: borderColor),
//             color: Colors.green.shade50,
//             borderRadius: BorderRadius.circular(4),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             child: TextFormField(
//               focusNode: focusNode,
//               controller: controller,
//              // validator: validation,
//               style: const TextStyle(color: Colors.black),
//               keyboardType: keyboardType,
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.zero,
//                 border: InputBorder.none,
//                 label: Text(
//                   labelText,
//                   style: const TextStyle(color: Colors.grey),
//                 ),
//                 prefixIconConstraints:
//                 const BoxConstraints(minWidth: 0, minHeight: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }



Widget appTextField(String labelText, String? hintText){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: getVerticalSize(20),),
      Text(labelText,style: TextStyle(fontSize: getFontSize(15),color: AppColors.white)),
      SizedBox(height:  getVerticalSize(5),),
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if(value!.isNotEmpty){
            return null;
          }else{
            return 'Fill The Field';
          }
        },
        cursorColor: AppColors.blue,
style: TextStyle(color: AppColors.white),
       decoration: InputDecoration(
         contentPadding:const EdgeInsets.all(17),
         hintStyle: TextStyle(color: AppColors.originalGrey,fontSize: getFontSize(12)),
           hintText: hintText,
            isDense: true,
           border: const OutlineInputBorder(),enabledBorder: OutlineInputBorder(borderRadius: AppDecoration.appBorderRadius,borderSide: BorderSide(color: AppColors.grey)), focusedBorder: OutlineInputBorder(borderRadius: AppDecoration.appBorderRadius,borderSide: BorderSide(color: AppColors.blue))),
      ),
    ],
  );
}