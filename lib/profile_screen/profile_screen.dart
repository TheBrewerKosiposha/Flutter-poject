import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastak/consts/consts.dart';
import 'package:mastak/consts/list.dart';
import 'package:mastak/widgets_common/bg_widget.dart';

import 'components/details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.topRight,
                    child: Icon(Icons.edit,color: whiteColor,)
                ).onTap(() { }),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(imgProfile,width: 100,fit:BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,

                    Expanded(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Lox User".text.fontFamily(semibold).white.make(),
                        5.heightBox,
                        "test@gmail.cum".text.white.make(),
                      ],
                    )),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                        onPressed: (){},
                      child: login.text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),

              20.heightBox,
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 detailsCard(count: "00",title: "in your cart",width: context.screenWidth/3.2),
                 detailsCard(count: "00",title: "in your wishlist",width: context.screenWidth/3.2),
                 detailsCard(count: "00",title: "your orders",width: context.screenWidth/3.2),
               ],
             ),



              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context,index){
                  return Divider(
                    color: lightGrey,
                  );
                },
                itemCount:profileButtonsList.length,itemBuilder: (BuildContext contest,int index){
                return ListTile(
                  leading: Image.asset(profileButtonsIcon[index],width: 22,),
                  title:"${ profileButtonsList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                );
              },



              ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(Colors.red).make(),



            ],
          ),
        ),
      ),
    );
  }
}
