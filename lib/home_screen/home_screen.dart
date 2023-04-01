import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastak/consts/consts.dart';
import 'package:mastak/consts/list.dart';
import 'package:mastak/home_screen/components/featured_button.dart';
import 'package:mastak/widgets_common/home_bottons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.white10,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: Colors.white10,
            child: TextFormField(
decoration: const InputDecoration(
  border: InputBorder.none,
  suffixIcon:Icon(Icons.search) ,
  filled: true,
  fillColor: Colors.white,
  hintText: searchText,
  hintStyle: TextStyle(
    color: textfieldGrey
  ),

),
            ),
          ),

       10.heightBox,
       Expanded(
         child: SingleChildScrollView(
           physics: const BouncingScrollPhysics(),
           child: Column(
             children: [
               VxSwiper.builder(
                   aspectRatio: 16/9,
                   autoPlay: true,
                   height: 150,
                   enlargeCenterPage: true,
                   itemCount: sliderList.length, itemBuilder: (context,index){
                 return  Image.asset(sliderList[index],fit: BoxFit.fitWidth,
                 ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
               }),
               10.heightBox,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:

                 List.generate(2, (index) => homeButton(
                   height: context.screenHeight * 0.15,
                   width: context.screenWidth/2.5,
                   icon: index == 0? icTodaysDeal : icFlashDeal,
                   title: index == 0? todayDeal : flashsale,

                 )),
               ),

               10.heightBox,

               VxSwiper.builder(
                   aspectRatio: 16/9,
                   autoPlay: true,
                   height: 150,
                   enlargeCenterPage: true,
                   itemCount: secondSliderList.length, itemBuilder: (context,index){
                 return  Image.asset(secondSliderList[index],fit: BoxFit.fitWidth,
                 ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
               }),
               10.heightBox,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:
                 List.generate(3, (index) => homeButton(
                   height: context.screenHeight * 0.15,
                   width: context.screenWidth/3.5,
                   icon: index == 0? icTopCategories : index == 1 ? icBrands:icTopSeller,
                   title: index == 0? topCateg:index == 1 ? brend: topSellers ,
                 )),

               ),




               20.heightBox,
               Align(
                   alignment: Alignment.centerLeft,
                   child: featuredCategoties.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),

               20.heightBox,
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: List.generate(3, (index) => Column(
children: [
featuredButton(icon: featuredImages1[index],title: featuredTitles1[index]),
  10.heightBox,
  featuredButton(icon: featuredImages2[index],title: featuredTitles2[index]),
],
                   )),
                 ),
               ),

               
               20.heightBox,
               
               Container(
                 padding: const EdgeInsets.all(12),
                 width: double.infinity,
                 decoration: const BoxDecoration(color: Colors.red),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     featuredProduct.text.white.fontFamily(bold).size(18).make(),
                     10.heightBox,
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: List.generate(6, (index) => Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset(imgP1,width: 150,fit:BoxFit.cover,),
                             10.heightBox,
                             "Что-то 15".text.fontFamily(semibold).color(darkFontGrey).make(),
                             10.heightBox,
                             "\$300".text.color(Colors.red).fontFamily(bold).size(16).make(),
                           ],
                         ).box.margin(EdgeInsets.symmetric(horizontal: 4)).white.rounded.padding(EdgeInsets.all(8)).make()),
                       ),
                     ),
                   ],
                 ),

               ),


               20.heightBox,
               GridView.builder(
                 physics: const NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemCount: 6,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 300), itemBuilder: (context,index){
                 return Column(

                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Image.asset(imgP5,height: 200,width: 200,fit:BoxFit.cover,),
                    const Spacer(),
                     "Что-то 15".text.fontFamily(semibold).color(darkFontGrey).make(),
                     10.heightBox,
                     "\$300".text.color(Colors.red).fontFamily(bold).size(16).make(),
                   ],
                 ).box.margin(EdgeInsets.symmetric(horizontal: 4)).white.rounded.padding(EdgeInsets.all(12)).make();
               })

             ],
           ),
         ),
       ),


        ],
      ),),


    );
  }
}
