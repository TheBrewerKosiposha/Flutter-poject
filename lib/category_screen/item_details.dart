import 'package:flutter/material.dart';
import 'package:mastak/consts/consts.dart';
import 'package:mastak/widgets_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.share,color: darkFontGrey,)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_outline,color: darkFontGrey,)),
        ],
      ),
      body: Column(
children: [
  Expanded(
      child:
      Padding(

      padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(
                  autoPlay: true,
                  height: 350,
                  aspectRatio: 16/9,
                  itemCount: 3, itemBuilder: (context,index){
                return Image.asset(imgFc5,width: double.infinity,fit:BoxFit.cover);
              }),
10.heightBox,
              title!.text.size(18).color(darkFontGrey).fontFamily(semibold).make(),
              10.heightBox,
              VxRating(onRatingUpdate: (value){},normalColor: textfieldGrey,selectionColor: golden,count: 5,size: 25,stepInt: true ),
              10.heightBox,
              "\$30,000".text.color(Colors.red).fontFamily(bold).size(18).make(),
              10.heightBox,
              Row(
                children: [
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     "Seller".text.white.fontFamily(semibold).make(),
                     5.heightBox,
                     "In House Brands".text.fontFamily(semibold).color(darkFontGrey).size(16).make()
                   ],
                  )),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.message_rounded,color: darkFontGrey,),
                  ),
                ],
              ).box.height(60).padding(EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
              20.heightBox,
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Color:".text.color(textfieldGrey).make(),
                      ),
                      Row(
                        children: List.generate(3, (index) => VxBox().size(40, 40).roundedFull.color(Vx.randomPrimaryColor).margin(EdgeInsets.symmetric(horizontal: 4)).make(),
                        
                        ),
                      ),
                    ],
                  ).box.padding(EdgeInsets.all(8)).make(),

                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Color:".text.color(textfieldGrey).make(),
                      ),
                      Row(
                       children: [
                         IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                         "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                         IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                         10.widthBox,
                         "(0 available)".text.color(textfieldGrey).make(),
                       ],

                        ),




                      
                    ],
                  ).box.padding(EdgeInsets.all(8)).make(),


                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Total:".text.color(textfieldGrey).make(),
                      ),
                      "\$0.00".text.color(Colors.red).size(16).fontFamily(bold).make(),
                    ],

                  ),

                ],
              ).box.white.shadowSm.make(),
              
              10.heightBox,
              "Описание".text.color(darkFontGrey).fontFamily(semibold).make(),
              10.heightBox,
              "Что-то пишу и пишу .... sdagfhgjkdbjcvfhjdgcubejhcvjhewckjbasncvjhwadgaywdghawvjhxvwqyvdhjwvhgdv".text.color(darkFontGrey).make(),
              
            ],
          ),
        ),
      )
  ),
  SizedBox(
    width: double.infinity,
    height: 60,
    child: ourBitton(
    color: Colors.red,
    onPress: (){},
    textColor: whiteColor,
    title: "Добавить в карзину"

  ),)
],
      ),
    );
  }
}
