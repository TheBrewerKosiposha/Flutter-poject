import 'package:flutter/material.dart';
import 'package:mastak/category_screen/item_details.dart';
import 'package:mastak/widgets_common/bg_widget.dart';
import 'package:mastak/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "Что-то".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.rounded.size(120, 60).margin(EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),
              20.heightBox,
              Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,crossAxisSpacing: 8), itemBuilder: (context,index){
                return Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imgP5,height: 150,width: 200,fit:BoxFit.cover,),

                    "Что-то 15".text.fontFamily(semibold).color(darkFontGrey).make(),
                    10.heightBox,
                    "\$300".text.color(Colors.red).fontFamily(bold).size(16).make(),
                  ],
                ).box.margin(const EdgeInsets.symmetric(horizontal: 4)).white.rounded.outerShadowSm.padding(const EdgeInsets.all(12)).make().onTap(() {Get.to(()=>const ItemDetails(title: "Dummy item"));
                });

              }))
            ],
          ),
        ),
      )
    );
  }
}
