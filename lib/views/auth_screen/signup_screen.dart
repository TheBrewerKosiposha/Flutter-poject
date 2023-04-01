import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastak/consts/consts.dart';
import 'package:mastak/controllers/auth_controller.dart';
import 'package:mastak/home_screen/home.dart';
import 'package:mastak/widgets_common/applogo_widgets.dart';
import 'package:mastak/widgets_common/bg_widget.dart';
import 'package:mastak/widgets_common/custom_textfield.dart';
import 'package:mastak/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool? isCheck = false;
  var controller = Get.put(AuthController());

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(child:Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Зарегистрироваться в $appname".text.fontFamily(bold).white.size(22).make(),
            10.heightBox,


            Column(
              children: [
                customTextField(hint: "Введите ваше имя",title: name,controller: nameController,isPass: false),
                customTextField(hint: "Пример email: name@gmail.cum" , title: email,controller:  emailController,isPass:false),
                customTextField(hint: "Введите ваш пароль", title: password,controller: passwordController,isPass:true),
                customTextField(hint: "Введите ваш пароль снова", title: retypePassword,controller: passwordRetypeController,isPass:true),


                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.red,
                      value: isCheck,
                      onChanged: (newValue)
                      {
                        setState(() {
                          isCheck = newValue;
                        });

                    },),
                    10.widthBox,
                    RichText(text: const TextSpan(
                     children: [
                       TextSpan(text: "Я согласен с ", style: TextStyle(
                         fontFamily: regular,
                         color: fontGrey,
                       )),
                       TextSpan(text: privatePolicy, style: TextStyle(
                         fontFamily: regular,
                         color: Colors.red,
                       )),
                       TextSpan(text: " и " , style: TextStyle(
                         fontFamily: regular,
                         color: fontGrey,
                       )),
                       TextSpan(text: dopText, style: TextStyle(
                         fontFamily: regular,
                         color: Colors.red,
                       )),
                     ]
                    )
                    )
                  ],
                ),

                5.heightBox,
                ourBitton(color:  isCheck ==true? redColor: lightGrey,title: Reg,textColor: whiteColor,onPress: () async{
                  if(isCheck !=false){
                    try{
                      await controller.signupMethod(context:  context,email: emailController.text,password: passwordController.text).then((value) => {
                        controller.storeUserData(
                      email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text,
                      ),
                      }).then((value) {
                        VxToast.show(context, msg: loggedin);
                        Get.offAll(()=>Home());
                      });
                    }
                    catch(e)
                    {
auth.signOut();
VxToast.show(context, msg: e.toString());
                    }
                  }
                },).box.width(context.screenWidth-50).make(),
                10.heightBox,
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAccount,
                        style:TextStyle(
                          fontFamily: bold,
                          color: fontGrey
                        )
                    ),
                    TextSpan(
                        text: login,
                        style:TextStyle(
                            fontFamily: bold,
                            color: Colors.red
                        )
                    )
                  ]
                ),
                ).onTap(() {
                  Get.back();
                }),
              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).make(),

          ],
        ),
      ),
    ));
  }
}
