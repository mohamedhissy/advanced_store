import 'package:advanced_store/core/resources/manager_colors.dart';
import 'package:advanced_store/core/resources/manager_font_sizes.dart';
import 'package:advanced_store/core/resources/manager_font_weight.dart';
import 'package:advanced_store/core/resources/manager_height.dart';
import 'package:advanced_store/core/resources/manager_width.dart';
import 'package:advanced_store/features/profile/presentation/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../../home/presentation/controller/home_controller.dart';
import '../../../settings/presentation/controller/stting_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      final HomeController homeController = Get.put(HomeController());
      final SettingController settingController = Get.put(SettingController());
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
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w28),
                child: Text(
                  ManagerStrings.personalProfile,
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s20,
                    fontWeight: ManagerFontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: ManagerHeight.h24,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: ManagerWidth.w120,
                        height: ManagerHeight.h120,
                        margin:
                            EdgeInsets.symmetric(horizontal: ManagerWidth.w50),
                        child:CircleAvatar(
                          backgroundImage: AssetImage(
                            settingController.selectedGender.value == ManagerStrings.male
                                ? ManagerAssets.profile1  // Image for Male
                                : ManagerAssets.profile2,  // Image for Female
                          ),
                        ),

                      ),
                      SizedBox(
                        height: ManagerHeight.h16,
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.showEditDialog(context);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.edit_outlined,color: ManagerColors.editColor,),
                            Text(
                              ManagerStrings.edit,
                              style: TextStyle(
                                  fontSize: ManagerFontSizes.s16,
                                  color: ManagerColors.editColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            ManagerStrings.hello,
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s18,
                              fontWeight: ManagerFontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: ManagerWidth.w8,
                          ),
                          Text(
                            controller.appSettingsSharedPreferences.userName,
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s18,
                              fontWeight: ManagerFontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ManagerHeight.h6,
                      ),
                      Text(
                        controller.appSettingsSharedPreferences.userEmail,
                        style: TextStyle(
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ManagerHeight.h6,),
              Container(
                width: double.infinity,
                height: ManagerHeight.h32,
                color: ManagerColors.homeSearchPink,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(ManagerStrings.contactUs,style: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.w400,
                  ),),
                ),
              ),
              SizedBox(height: ManagerHeight.h6,),
              ListTile(
                leading: Text(ManagerStrings.helpCenter,style: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.w400,
                ),),
                trailing: Icon(Icons.arrow_forward_rounded),
              ),
              SizedBox(height: ManagerHeight.h6,),
              ListTile(
                leading: Text(ManagerStrings.contactUs,style: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.w400,
                ),),
                trailing: Icon(Icons.arrow_forward_rounded),
              ),
              SizedBox(height: ManagerHeight.h6,),
              ListTile(
                leading: Obx(() => Text(
                  controller.selectedWord.value, // Show selected word
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.w400,
                  ),
                )),
                trailing: Obx(() => PopupMenuButton<String>(
                  icon: Icon(
                    controller.isArrowForward.value
                        ? Icons.arrow_forward_rounded
                        : Icons.arrow_drop_down_rounded, // Toggle icon
                  ),
                  onOpened: () => controller.toggleIcon(), // Change icon when menu opens
                  onCanceled: () => controller.toggleIcon(), // Change icon when menu closes
                  onSelected: (String value) {
                    controller.selectWord(value); // Update selected word
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(value: ManagerStrings.sendEmail, child: Text(ManagerStrings.sendEmail)),
                    PopupMenuItem(value: controller.appSettingsSharedPreferences.userEmail, child: Text(controller.appSettingsSharedPreferences.userEmail)),
                  ],
                )),
                onTap: () {
                  controller.toggleIcon(); // Open menu when tapped
                },
              ),
              SizedBox(height: ManagerHeight.h20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ManagerColors.greensh,
                      ManagerColors.middle,
                      ManagerColors.primaryColor,
                    ]
                  )
                ),
                child: ElevatedButton(
                    onPressed: () {
                      controller.logOut();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ManagerColors.transparent,
                      elevation: 0,
                      minimumSize: Size(
                        ManagerWidth.w430,
                        ManagerHeight.h50,
                      ),
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(ManagerRadius.r8),
                      ),
                    ),
                    child: Text(
                      ManagerStrings.logOut,
                      style: TextStyle(
                        color: ManagerColors.black,
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    });
  }
}
