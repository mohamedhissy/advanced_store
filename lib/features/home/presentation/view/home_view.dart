import 'package:advanced_store/features/home/presentation/view/widget/category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0, // Remove shadow for a clean look
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(ManagerAssets.home22),
                      ),
                    ),
                    Text(
                      "مرحبا,لينا",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w16,
                      vertical: ManagerHeight.h20),
                  width: ManagerWidth.w72,
                  height: ManagerHeight.h40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ManagerAssets.home1),
                      fit: BoxFit
                          .contain, // Ensures the image is properly displayed
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: ManagerHeight.h24,
              ),
              Container(
                  width: 350,
                  height: 28,
                  child: Obx(() => TextField(
                    cursorColor: ManagerColors.primaryColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: controller.isMale.value
                            ? Colors.blue
                            : ManagerColors
                            .primaryColor, // Change color based on isMale
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none, // No border
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: controller.isMale.value
                          ? Colors.blue
                          : Colors.pink,
                      labelText: ManagerStrings.searchForProducts,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle:
                      TextStyle(color: ManagerColors.secondaryColor),
                    ),
                  ))),
              SizedBox(
                height: ManagerHeight.h22,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w16),
                width: 396,
                height: 98,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ManagerAssets.home15))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: ManagerWidth.w182,
                    child: Obx(
                          () => TabBar(
                        onTap: controller.changeMale,
                        indicatorColor:
                        controller.isMale.value ? Colors.blue : Colors.pink,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(text: ManagerStrings.men),
                          Tab(text: ManagerStrings.women),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ManagerHeight.h8,
              ),
              Container(
                height: ManagerHeight.h80,
                child: TabBarView(
                  children: [
                    CategoryListView(categories: [
                      CategoryItem(ManagerStrings.clothes, ManagerAssets.home7,
                          Colors.blue),
                      CategoryItem(ManagerStrings.bags, ManagerAssets.home8,
                          Colors.blue),
                      CategoryItem(ManagerStrings.shoes, ManagerAssets.home9,
                          Colors.blue),
                      CategoryItem(ManagerStrings.accessory,
                          ManagerAssets.home10, Colors.blue),
                      CategoryItem(ManagerStrings.brand, ManagerAssets.home11,
                          Colors.blue),
                      CategoryItem(ManagerStrings.clothes, ManagerAssets.home7,
                          Colors.blue),
                    ]),

                    // Women's Category (نساء)
                    CategoryListView(categories: [
                      CategoryItem(ManagerStrings.dress, ManagerAssets.home2,
                          Colors.pink),
                      CategoryItem(ManagerStrings.clothes, ManagerAssets.home7,
                          Colors.pink),
                      CategoryItem(ManagerStrings.bags, ManagerAssets.home4,
                          Colors.pink),
                      CategoryItem(ManagerStrings.shoes, ManagerAssets.home5,
                          Colors.pink),
                      CategoryItem(ManagerStrings.brand, ManagerAssets.home6,
                          Colors.pink),
                      CategoryItem(ManagerStrings.dress, ManagerAssets.home2,
                          Colors.pink),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: ManagerHeight.h20,
              ),
              Obx(() => Stack(
                children: [
                  Container(
                    margin:
                    EdgeInsets.symmetric(horizontal: ManagerWidth.w16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          ManagerStrings.newSeason,
                          style: TextStyle(
                              fontWeight: ManagerFontWeight.bold,
                              fontSize: ManagerFontSizes.s20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: ManagerHeight.h50,
                    child: Container(
                      width: ManagerWidth.w470,
                      height: ManagerHeight.h161,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(ManagerAssets.home16))),
                    ),
                  ),
                  controller.isMale.value
                      ? Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: ManagerHeight.h20),
                        width: ManagerWidth.w68,
                        height: ManagerHeight.h190,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home21))),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: ManagerHeight.h20),
                        width: ManagerWidth.w86,
                        height: ManagerHeight.h200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home22))),
                      ),
                      SizedBox(
                        width: ManagerWidth.w10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: ManagerHeight.h40),
                        width: ManagerWidth.w85,
                        height: ManagerHeight.h110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home23))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: ManagerHeight.h30),
                        width: ManagerWidth.w125,
                        height: ManagerHeight.h155,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home24))),
                      ),
                    ],
                  )
                      : Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: ManagerHeight.h20),
                        width: ManagerWidth.w86,
                        height: ManagerHeight.h190,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home17))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: ManagerHeight.h100),
                        width: ManagerWidth.w80,
                        height: ManagerHeight.h80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home18))),
                      ),
                      Container(
                        width:ManagerWidth.w80,
                        height: ManagerHeight.h70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home19))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: ManagerHeight.h100),
                        width: ManagerWidth.w140,
                        height: ManagerHeight.h100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    ManagerAssets.home20))),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      );
    });
  }
}