import 'package:advanced_store/core/resources/manager_height.dart';
import 'package:advanced_store/core/resources/manager_strings.dart';
import 'package:advanced_store/features/cart/presentation/controller/cart_controller.dart';
import 'package:advanced_store/features/details/presentation/controller/view_details_controller.dart';
import 'package:advanced_store/features/details/presentation/view/widget/progress_indicator.dart';
import 'package:advanced_store/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../routes/routes.dart';

class DetailsView extends StatelessWidget {
   DetailsView({super.key});


  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailseController>(
      builder: (controller) {
        final CartController cartController = Get.put(CartController());
        final HomeController homeController = Get.put(HomeController());
        // String word = controller.homeModel.data.first.name;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ManagerColors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.homeView);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ManagerColors.black,
              ),
            ),
            actions: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w16),
                  child: Icon(
                    Icons.search,
                    color: ManagerColors.black,
                  )),
            ],
          ),
          bottomNavigationBar: Obx(
                () => BottomNavigationBar(
              currentIndex: controller.pageSelectedIndex.value,
              onTap: homeController.navigateToScreen,
              // Directly call the function
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
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: ManagerHeight.h15),
                      height: 300,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          // padding: EdgeInsets.symmetric(horizontal: 15),
                          itemCount: 3,
                          controller: PageController(),
                          onPageChanged: (index){
                            controller.onPageChanged(index);
                          },
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 300,
                                    width: 400,
                                    // alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(controller.productDetailsModel.data.first.photos[index].path),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: ManagerHeight.h30,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => progressIndicator(
                            color: controller.currentPageIndex.value == 0
                                ? ManagerColors.primaryColor
                                : ManagerColors.transparent,
                            borderColor: ManagerColors.primaryColor,
                          )),
                          Obx(() => progressIndicator(
                              color: controller.currentPageIndex.value == 1
                                  ? ManagerColors.blue
                                  : ManagerColors.transparent,
                              borderColor: ManagerColors.blue
                          )),
                          Obx(() => progressIndicator(
                              color: controller.currentPageIndex.value == 2
                                  ? ManagerColors.green
                                  : ManagerColors.transparent,
                              borderColor: ManagerColors.green
                          )),
                        ],
                      ),
                    ),
                    SizedBox(height: ManagerHeight.h30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(controller.productDetailsModel.data.first.name,
                            // word.substring(0, controller.visibleLetters.toInt()), // Show partial word
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s20,
                              fontWeight: ManagerFontWeight.bold,
                              color: ManagerColors.black,
                            ),
                            maxLines: 10,
                          ),
                          Text(
                            controller.productDetailsModel.data.first.calculablePrice.toString(),
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s20,
                              fontWeight: ManagerFontWeight.bold,
                              color: ManagerColors.black,
                            ),
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ManagerHeight.h14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w25),
                          child: Text('controller.homeModel.data.first.discountType'),
                        ),
                      ],
                    ),
                    SizedBox(height: ManagerHeight.h30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w15),
                            height: ManagerHeight.h30,
                            width: ManagerWidth.w107,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: Obx(() => DropdownButton<String>(
                                value: controller.selectedValue.value,
                                icon:  Icon(Icons.arrow_drop_down, color: Colors.black),
                                style:  TextStyle(fontSize: 16, color: Colors.black),
                                onChanged: (String? newValue) {
                                  controller.changeValue(newValue!);
                                },
                                items: controller.items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              )),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: ManagerWidth.w40,
                                height: ManagerHeight.h40,
                                margin:
                                EdgeInsets.symmetric(horizontal: ManagerWidth.w10),
                                child: CircleAvatar(
                                  backgroundColor: ManagerColors.red,
                                ),
                              ),
                              Container(
                                width: ManagerWidth.w40,
                                height: ManagerHeight.h40,
                                margin:
                                EdgeInsets.symmetric(horizontal: ManagerWidth.w10),
                                child: CircleAvatar(
                                  backgroundColor: ManagerColors.primaryColor,
                                ),
                              ),
                              Container(
                                width: ManagerWidth.w40,
                                height: ManagerHeight.h40,
                                margin:
                                EdgeInsets.symmetric(horizontal: ManagerWidth.w10),
                                child: CircleAvatar(
                                  backgroundColor: ManagerColors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ManagerHeight.h30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w15),
                          child: Text(ManagerStrings.sameProducts,style: TextStyle(
                            fontWeight: ManagerFontWeight.regular,
                            fontSize: ManagerFontSizes.s16,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: ManagerHeight.h30,),
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
                                  image: NetworkImage(homeController.homeModel.data[index].thumbnailImage),
                                  // Replace with your images
                                  fit: BoxFit.cover, // Cover the whole container
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        );
                      },
                      shrinkWrap: true,
                      // Prevent unnecessary scrolling
                      physics: NeverScrollableScrollPhysics(),
                    ),
                    SizedBox(height: ManagerHeight.h30,), // SizedBox(height: ManagerHeight.h50,),
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        // Love (Favorite) Icon
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Color(0xffF5E1EBFF),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.favorite, color: Colors.white),
                            onPressed: () {
                              // Handle favorite action
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ManagerColors.greensh,
                                  ManagerColors.middle,
                                  ManagerColors.primaryColor
                                ], // Gradient colors
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                cartController.addToCart({
                                  "name": controller.productDetailsModel.data.first.name,
                                  "price":
                                  controller.productDetailsModel.data.first.calculablePrice,
                                  "image": controller
                                      .productDetailsModel.data.first.thumbnailImage,
                                });

                                Get.snackbar(ManagerStrings.addedToCart,
                                    ManagerStrings.addedToCartSuccessfully,
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: ManagerColors.primaryColor,
                                    colorText: Colors.white);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                minimumSize:
                                Size(double.infinity, ManagerHeight.h50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                ManagerStrings.addToCart,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: ManagerFontSizes.s18,
                                    fontWeight: ManagerFontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        ),],
                    ),
                  ),
                  ),
            ],
          ),
        );
      }
    );
  }
}
