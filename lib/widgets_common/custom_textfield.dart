

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastak/consts/consts.dart';

Widget customTextField({String? title,String? hint,controller,isPass}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          helperText: hint,
          isDense: true,
          fillColor: Colors.black12,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor
            )
          )

        ),
      ),
      5.heightBox,
    ],

  );
}