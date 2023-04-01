import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastak/consts/consts.dart';
import 'package:mastak/home_screen/home.dart';
import 'package:mastak/views/auth_screen/signup_screen.dart';
import 'package:mastak/widgets_common/applogo_widgets.dart';
import 'package:mastak/widgets_common/bg_widget.dart';
import 'package:mastak/widgets_common/custom_textfield.dart';
import 'package:mastak/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(child:Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Войдите в систему вы $appname".text.fontFamily(bold).white.size(22).make(),
            10.heightBox,


            Column(
              children: [
                customTextField(hint: "Пример email: name@gmail.cum" , title: email,isPass: false),
                customTextField(hint: "Введите ваш пароль", title: password,isPass: true),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, child: Text("Забыли пароль?")),

                ),
                5.heightBox,
                ourBitton(color: redColor,title: login,textColor: whiteColor,onPress: (){
                  Get.to(()=>Home());
                }).box.width(context.screenWidth-50).make(),
                5.heightBox,
              Text("Создать навый акаунт ?").text.color(Colors.black).make(),
5.heightBox,
                ourBitton(color: redColor,title: Reg,textColor: whiteColor,onPress: (){
                  Get.to(()=> const SignUpScreen());
                }).box.width(context.screenWidth-50).make(),

              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).make(),

          ],
        ),
      ),
    ));
  }
}
