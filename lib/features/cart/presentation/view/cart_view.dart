import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../core/constants.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../home/presentation/controller/home_controller.dart';
import '../controller/cart_controller.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());


    return GetBuilder<CartController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                // color: ManagerColors.profileIconsColor,
              )),
          title: Text(
            ManagerStrings.cart,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w14),
                child: Icon(
                  Icons.search,
                  size: 30,
                  // color: ManagerColors.profileIconsColor,
                ))
          ],
        ),
        bottomNavigationBar: Obx(
              () => BottomNavigationBar(
            currentIndex: homeController.pageSelectedIndex.value,
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

        body: Obx(() {
          return controller.cartItems.isEmpty
              ? Center(child: Text(ManagerStrings.cartIsEmpty))
              : Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: controller.cartItems.length,
                  itemBuilder: (context, index) {
                    final product = controller.cartItems[index];
                    return Slidable(
                      key: ValueKey(product[Constants.name]),
                      endActionPane: ActionPane(
                        motion: const StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              controller.cartItems.removeAt(index);
                              controller.update();

                              Get.snackbar(
                                ManagerStrings.hasBeenDeleted,
                                "${product[Constants.name]} تم حذفه من السلة",
                                snackPosition: SnackPosition.BOTTOM,
                              );
                            },
                            backgroundColor: ManagerColors.primaryColor,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'حذف',
                          ),
                        ],
                      ),
                      child: Card(
                        shape:
                        RoundedRectangleBorder(side: BorderSide.none),
                        elevation: 0,
                        margin: EdgeInsets.all(5),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              product[Constants.image],
                              width: ManagerWidth.w60,
                              height: ManagerHeight.h60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            product[Constants.name],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "${product[Constants.price]} رس",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                endIndent: 40,
                indent: 40,
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Container(
                  margin:
                  EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  width: 390,
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ManagerStrings.quantity,
                              style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s18),
                            ),
                            Text(
                              controller.cartItems.length.toString(),
                              style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h24,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ManagerStrings.delivery,
                              style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s18),
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: ManagerHeight.h24,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ManagerStrings.totalPrice,
                              style: TextStyle(
                                  fontWeight: ManagerFontWeight.bold,
                                  fontSize: ManagerFontSizes.s18),
                            ),
                            Text(
                              controller.totalPrice.toString(),
                              style: TextStyle(
                                  fontWeight: ManagerFontWeight.bold,
                                  fontSize: ManagerFontSizes.s18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ManagerColors.greensh,
                        ManagerColors.middle,
                        ManagerColors.primaryColor
                      ], // Your gradient colors
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                      onPressed: () {


                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ManagerColors.transparent,
                        elevation: 0,
                        minimumSize: Size(
                          ManagerWidth.w343,
                          ManagerHeight.h40,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: ManagerColors.transparent, width: 2),
                        ),
                      ),
                      child: Text(
                        "Payment: ${controller.totalPrice.toStringAsFixed(2)} ٌR.S",
                        style: TextStyle(color: ManagerColors.black),
                      )),
                ),
              ),

            ],
          );
        }),
      );
      });
    }
}