// import 'package:advanced_store/features/splash/presentaion/controller/splash_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../../core/resources/manager_colors.dart';
// import '../../../../core/resources/manager_font_sizes.dart';
// import '../../../../core/resources/manager_font_weight.dart';
// import '../../../../core/resources/manager_fonts.dart';
// import '../../../../core/resources/manager_height.dart';
// import '../../../../core/resources/manager_strings.dart';
// import '../../../../core/resources/manager_width.dart';
//
// class RegistrationForm extends StatelessWidget {
//   final bool isEmailTab; // Determines which tab is active
//
//   RegistrationForm({required this.isEmailTab});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<SplashController>(builder: (controller) {
//       return Container(
//         margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w35),
//         child: Column(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Text(
//                     ManagerStrings.name,
//                     style: TextStyle(
//                         fontFamily: ManagerFontFamily.appFont,
//                         fontSize: ManagerFontSizes.s20,
//                         fontWeight: ManagerFontWeight.w400),
//                   ),
//                 ),
//                 Container(
//                   width: ManagerWidth.w343,
//                   height: ManagerHeight.h70,
//                   child: TextField(
//                     cursorColor: ManagerColors.primaryColor,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.visibility_off,
//                               color: Colors.grey,
//                             )),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           // Rounded corners
//                           borderSide: BorderSide.none, // No border
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextField,
//                         labelText: ManagerStrings.name,
//                         labelStyle:
//                             TextStyle(color: ManagerColors.secondaryColor)),
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     isEmailTab
//                         ? ManagerStrings.email
//                         : ManagerStrings.phoneNumber,
//                     style: TextStyle(
//                         fontFamily: ManagerFontFamily.appFont,
//                         fontSize: ManagerFontSizes.s20,
//                         fontWeight: ManagerFontWeight.w400),
//                   ),
//                 ),
//                 SizedBox(
//                   height: ManagerHeight.h14,
//                 ),
//                 Container(
//                   width: ManagerWidth.w343,
//                   height: ManagerHeight.h70,
//                   child: TextField(
//                     cursorColor: ManagerColors.primaryColor,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           // Rounded corners
//                           borderSide: BorderSide.none, // No border
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextField,
//                         labelText: isEmailTab
//                             ? ManagerStrings.email
//                             : ManagerStrings.phoneNumber,
//                         labelStyle:
//                             TextStyle(color: ManagerColors.secondaryColor)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: ManagerHeight.h14,
//                 ),
//                 Container(
//                   child: Text(
//                     ManagerStrings.password,
//                     style: TextStyle(
//                         fontFamily: ManagerFontFamily.appFont,
//                         fontSize: ManagerFontSizes.s20,
//                         fontWeight: ManagerFontWeight.w400),
//                   ),
//                 ),
//                 SizedBox(
//                   height: ManagerHeight.h14,
//                 ),
//                 Container(
//                   width: ManagerWidth.w343,
//                   height: ManagerHeight.h70,
//                   child: TextField(
//                     cursorColor: ManagerColors.primaryColor,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.visibility_off,
//                               color: Colors.grey,
//                             )),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           // Rounded corners
//                           borderSide: BorderSide.none, // No border
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextField,
//                         labelText: ManagerStrings.name,
//                         labelStyle:
//                             TextStyle(color: ManagerColors.secondaryColor)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: ManagerHeight.h14,
//                 ),
//                 Container(
//                   child: Text(
//                     ManagerStrings.password,
//                     style: TextStyle(
//                         fontFamily: ManagerFontFamily.appFont,
//                         fontSize: ManagerFontSizes.s20,
//                         fontWeight: ManagerFontWeight.w400),
//                   ),
//                 ),
//                 SizedBox(
//                   height: ManagerHeight.h14,
//                 ),
//                 Container(
//                   width: ManagerWidth.w343,
//                   height: ManagerHeight.h70,
//                   child: TextField(
//                     cursorColor: ManagerColors.primaryColor,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.visibility_off,
//                               color: Colors.grey,
//                             )),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           // Rounded corners
//                           borderSide: BorderSide.none, // No border
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextField,
//                         labelText: ManagerStrings.password,
//                         labelStyle:
//                             TextStyle(color: ManagerColors.secondaryColor)),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     GestureDetector(
//                       // Use GestureDetector for better control
//                       onTap: () {
//                         final controller = Get.find<
//                             SplashController>(); // Ensure controller is found
//                         controller.changeValue(); // Toggle checkbox value
//                       },
//                       child: Container(
//                         width: 22,
//                         height: 22,
//                         decoration: BoxDecoration(
//                           color: controller.checkboxValue
//                               ? Colors.pink
//                               : Colors.white,
//                           border: Border.all(
//                             color: controller.checkboxValue
//                                 ? Colors.pink
//                                 : Colors.black,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: ManagerWidth.w8,
//                     ),
//                     Text(ManagerStrings.name),
//                     Text(
//                       ManagerStrings.name,
//                       style: TextStyle(color: Colors.green),
//                     ),
//                     Text(ManagerStrings.name),
//                     Text(
//                       ManagerStrings.name,
//                       style: TextStyle(color: Colors.green),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }

import 'package:advanced_store/features/auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';

class RegistrationForm extends StatelessWidget {
  final bool isEmailTab;

  RegistrationForm({required this.isEmailTab});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: Container(
                    child: Text(
                      ManagerStrings.name,
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s20,
                        fontWeight: ManagerFontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide(
                        color: ManagerColors.bgColorTextField,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: ManagerStrings.enterName,
                    hintStyle:
                        TextStyle(color: ManagerColors.bgColorTextFieldString),
                    // labelText: ManagerStrings.enterName,
                    // labelStyle: TextStyle(
                    //   color: ManagerColors.bgColorTextFieldString,
                    // ),
                    filled: true,
                    fillColor: ManagerColors.bgColorTextField,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: Text(
                    isEmailTab
                        ? ManagerStrings.email
                        : ManagerStrings.phoneNumber,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide(
                        color: ManagerColors.bgColorTextField,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: isEmailTab
                        ? ManagerStrings.enterEmail
                        : ManagerStrings.enterPhoneNumber,
                    hintStyle:
                        TextStyle(color: ManagerColors.bgColorTextFieldString),
                    // labelText: isEmailTab
                    //     ? ManagerStrings.enterEmail
                    //     : ManagerStrings.enterPhoneNumber,
                    // labelStyle: TextStyle(color: ManagerColors.bgColorTextFieldString),
                    filled: true,
                    fillColor: ManagerColors.bgColorTextField,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: Container(
                    child: Text(
                      ManagerStrings.password,
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s20,
                        fontWeight: ManagerFontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: controller.showPassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide(
                        color: ManagerColors.bgColorTextField,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: ManagerStrings.enterPassword,
                    hintStyle:
                        TextStyle(color: ManagerColors.bgColorTextFieldString),
                    // labelText: ManagerStrings.enterPassword,
                    // labelStyle: TextStyle(
                    //   color: ManagerColors.bgColorTextFieldString,
                    // ),
                    suffixIcon: IconButton(
                        onPressed: () => controller.changePasswordVisibility(),
                        icon: controller.showPassword
                            ? Icon(Icons.visibility_off)
                            : Icon(
                                Icons.visibility,
                                color: ManagerColors.primaryColor,
                              )),
                    suffixIconColor: ManagerColors.color,
                    filled: true,
                    fillColor: ManagerColors.bgColorTextField,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: Container(
                    child: Text(
                      ManagerStrings.confirmPassword,
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s20,
                        fontWeight: ManagerFontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: controller.showConfirmPassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide(
                        color: ManagerColors.bgColorTextField,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: ManagerStrings.enterConfirmPassword,
                    hintStyle:
                        TextStyle(color: ManagerColors.bgColorTextFieldString),
                    // labelText: ManagerStrings.enterConfirmPassword,
                    // labelStyle: TextStyle(
                    //   color: ManagerColors.bgColorTextFieldString,
                    // ),
                    suffixIcon: IconButton(
                        onPressed: () => controller.changeConfirmPasswordVisibility(),
                        icon: controller.showConfirmPassword
                            ? Icon(Icons.visibility_off)
                            : Icon(
                                Icons.visibility,
                                color: ManagerColors.primaryColor,
                              )),
                    suffixIconColor: ManagerColors.color,
                    filled: true,
                    fillColor: ManagerColors.bgColorTextField,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: GestureDetector(
                    // Use GestureDetector for better control
                    onTap: () {
                      // final controller = Get.find<AuthController>(); // Ensure controller is found
                      controller.changeCheckBoxValue(); // Toggle checkbox value
                    },
                    child: Container(
                      width: ManagerWidth.w22,
                      height: ManagerHeight.h22,
                      decoration: BoxDecoration(
                        color: controller.checkboxValue
                            ? ManagerColors.primaryColor
                            : ManagerColors.white,
                        border: Border.all(
                          color: controller.checkboxValue
                              ? ManagerColors.primaryColor
                              : ManagerColors.primaryColor,
                          width: ManagerWidth.w2,
                        ),
                        borderRadius: BorderRadius.circular(ManagerRadius.r8),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: ManagerWidth.w8,
                // ),
                Text(ManagerStrings.iAgreeOn),
                SizedBox(
                  width: ManagerWidth.w4,
                ),
                Text(
                  ManagerStrings.termsOfUse,
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(
                  width: ManagerWidth.w4,
                ),
                Text(ManagerStrings.and),
                SizedBox(
                  width: ManagerWidth.w4,
                ),
                Text(
                  ManagerStrings.conditions,
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
