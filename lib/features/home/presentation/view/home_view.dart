import 'package:advanced_store/core/resources/manager_raduis.dart';
import 'package:advanced_store/features/details/presentation/controller/view_details_controller.dart';
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
import '../../../settings/presentation/controller/stting_controller.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      final SettingController settingController = Get.put(SettingController());
      final DetailseController detailseController = Get.put(DetailseController());

      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // Remove shadow for a clean look
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        backgroundImage: AssetImage(
                          settingController.selectedGender.value == ManagerStrings.male
                              ? ManagerAssets.profile1  // Image for Male
                              : ManagerAssets.profile2,  // Image for Female
                        ),
                      ),
                    ),
                    SizedBox(width: ManagerWidth.w10,),
                    Text(
                      controller.appSettingsSharedPreferences.userName,
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
                      image: AssetImage(
                          ManagerAssets.home1
                      ),
                      fit: BoxFit
                          .contain, // Ensures the image is properly displayed
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Obx(
                () => BottomNavigationBar(
              currentIndex: controller.pageSelectedIndex.value,
              onTap: controller.navigateToScreen,
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_shopping_cart),
                  label: ManagerStrings.cart,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_activity_outlined),
                  label: ManagerStrings.brand,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: ManagerStrings.home,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: ManagerStrings.settings,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ManagerStrings.profile,
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
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
                                  ? ManagerColors.homeSearchPink
                                  : ManagerColors
                                      .homeSearchblue, // Change color based on isMale
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
                                ? ManagerColors.homeSearchblue
                                : ManagerColors.homeSearchPink,
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
                          indicatorColor: controller.isMale.value
                              ? ManagerColors.blue
                              : ManagerColors.primaryColor,
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
                        CategoryItem(ManagerStrings.clothes,
                            ManagerAssets.home9, Colors.blue),
                        CategoryItem(ManagerStrings.bags, ManagerAssets.home10,
                            Colors.blue),
                        CategoryItem(ManagerStrings.shoes, ManagerAssets.home11,
                            Colors.blue),
                        CategoryItem(ManagerStrings.accessory,
                            ManagerAssets.home12, Colors.blue),
                        CategoryItem(ManagerStrings.brand, ManagerAssets.home13,
                            Colors.blue),
                        CategoryItem(ManagerStrings.clothes,
                            ManagerAssets.home14, Colors.blue),
                      ]),

                      // Women's Category (نساء)
                      CategoryListView(categories: [
                        CategoryItem(ManagerStrings.dress, ManagerAssets.home2,
                            Colors.pink),
                        CategoryItem(ManagerStrings.clothes,
                            ManagerAssets.home7, Colors.pink),
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
                          margin: EdgeInsets.symmetric(
                              horizontal: ManagerWidth.w16),
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
                                    margin:
                                        EdgeInsets.only(top: ManagerHeight.h20),
                                    width: ManagerWidth.w68,
                                    height: ManagerHeight.h190,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                ManagerAssets.home21))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ManagerHeight.h20),
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
                                    margin:
                                        EdgeInsets.only(top: ManagerHeight.h40),
                                    width: ManagerWidth.w85,
                                    height: ManagerHeight.h110,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                ManagerAssets.home23))),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: ManagerHeight.h30),
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
                                    margin:
                                        EdgeInsets.only(top: ManagerHeight.h20),
                                    width: ManagerWidth.w86,
                                    height: ManagerHeight.h190,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                ManagerAssets.home17))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: ManagerHeight.h100),
                                    width: ManagerWidth.w80,
                                    height: ManagerHeight.h80,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                ManagerAssets.home18))),
                                  ),
                                  Container(
                                    width: ManagerWidth.w80,
                                    height: ManagerHeight.h70,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                ManagerAssets.home19))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: ManagerHeight.h100),
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
                    )),
                SizedBox(
                  height: ManagerHeight.h6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ManagerStrings.shopFromBestSeller,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s16,
                            fontWeight: ManagerFontWeight.bold),
                      ),
                      Text(
                        ManagerStrings.viewAll,
                        style: TextStyle(
                            fontSize: ManagerFontSizes.s16,
                            fontWeight: ManagerFontWeight.regular),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h6,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      itemCount: controller.homeModel.data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            detailseController.readDetailse(controller.homeModel.data[index].id,context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        controller
                                            .homeModel.data[index].thumbnailImage,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  controller.homeModel.data[index].name,
                                  style: TextStyle(
                                      fontWeight: ManagerFontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  controller.productPrice(
                                      controller.homeModel.data[index].basePrice
                                          .toString(),
                                      controller.homeModel.data[index].unit),
                                  style: TextStyle(
                                      fontWeight: ManagerFontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => Container(
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: controller.isMale.value
                          ? ManagerColors.blue
                          : ManagerColors.primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ManagerStrings.shopForTheFirstTime,
                          style: TextStyle(
                            fontSize: ManagerFontSizes.s24,
                            fontWeight: ManagerFontWeight.w600,
                            color: ManagerColors.white,
                          ),
                        ),
                        Text(
                          ManagerStrings.andGet,
                          style: TextStyle(
                            fontSize: ManagerFontSizes.s24,
                            fontWeight: ManagerFontWeight.w600,
                            color: ManagerColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h20,
                ),
                Container(
                  child: Text(
                    ManagerStrings.offersClosestToYourArea,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h30,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 4,
                  // Only 4 images
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(controller
                                  .homeModel.data[index].thumbnailImage),
                              // Replace with your images
                              fit: BoxFit.cover, // Cover the whole container
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Obx(()=>Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            decoration: BoxDecoration(
                              color: controller.isMale.value
                                  ? ManagerColors.blue
                                  : ManagerColors.primaryColor,
                              borderRadius: BorderRadius.circular(ManagerRadius.r100),
                            ),
                            child: Text(
                              ManagerStrings.discount,
                              style: TextStyle(
                                color: Colors.white, // لون النص
                                fontWeight: FontWeight.bold,
                                fontSize: 16, // حجم الخط
                              ),
                            ),
                          ),
                        ),),
                      ],
                    );
                  },
                  shrinkWrap: true,
                  // Prevent unnecessary scrolling
                  physics: NeverScrollableScrollPhysics(),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
