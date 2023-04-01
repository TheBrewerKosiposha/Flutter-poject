import 'package:flutter/cupertino.dart';
import 'package:mastak/consts/consts.dart';
import 'package:bot_toast/bot_toast.dart';

Widget bgWidget({Widget? child}){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image:AssetImage(imgBackground), fit: BoxFit.fill),
    ),
    child:child,
  );

}