import 'package:flutter/material.dart';
import 'package:mastak/cart_screen/cart_screen.dart';
import 'package:mastak/category_screen/category_screen.dart';
import 'package:mastak/consts/consts.dart';
import 'package:get/get.dart';
import 'package:mastak/controllers/home_controller.dart';
import 'package:mastak/home_screen/home_screen.dart';
import 'package:mastak/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeControllers());

    var navbarItem =[
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26),label: account),

    ];

    var navBody = [
   const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),

    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
          ()=> Expanded(
child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(()=>
     BottomNavigationBar(
       currentIndex: controller.currentNavIndex.value,
          selectedItemColor: Colors.red,
          selectedLabelStyle: TextStyle(fontFamily: semibold ) ,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
            items: navbarItem,
       onTap: (value){
         controller.currentNavIndex.value = value;
       },
        ),
      ),
    );
  }
}
