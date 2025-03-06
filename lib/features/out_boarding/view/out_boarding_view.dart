import 'package:advanced_store/core/resources/manager_colors.dart';
import 'package:advanced_store/core/resources/manager_font_sizes.dart';
import 'package:advanced_store/core/resources/manager_font_weight.dart';
import 'package:advanced_store/core/resources/manager_height.dart';
import 'package:advanced_store/core/resources/manager_strings.dart';
import 'package:advanced_store/core/resources/manager_width.dart';
import 'package:advanced_store/features/splash/presentaion/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/manager_assets.dart';
import '../../../core/widgets/base_button.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topLeft,
                    image: AssetImage(ManagerAssets.outBoarding9),
                  ),
                ),
              ),
              Positioned(
                  top: ManagerHeight.h51,
                  left: ManagerWidth.w24,
                  right: ManagerWidth.w299,
                  child: Text(
                    ManagerStrings.signUp,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  )),
              Positioned(
                top: ManagerHeight.h40,
                right: ManagerWidth.w37,
                child: Container(
                  width: ManagerWidth.w71,
                  height: ManagerHeight.h40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ManagerAssets.outBoarding10),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h83,
                left: ManagerWidth.w165,
                child: Container(
                  width: ManagerWidth.w35,
                  height: ManagerHeight.h35,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ManagerAssets.outBoarding1),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h100,
                right: ManagerWidth.w335,
                left: ManagerWidth.w0,
                child: Container(
                  width: ManagerWidth.w100,
                  height: ManagerHeight.h100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ManagerAssets.outBoarding2),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h108,
                right: ManagerWidth.w0,
                child: Container(
                  width: ManagerWidth.w60,
                  height: ManagerHeight.h60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage(ManagerAssets.outBoarding3),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h168,
                right: ManagerWidth.w182,
                left: ManagerWidth.w90,
                child: Container(
                  width: ManagerWidth.w155,
                  height: ManagerHeight.h155,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ManagerAssets.outBoarding4),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h225,
                right: ManagerWidth.w107,
                child: Container(
                  width: ManagerWidth.w40,
                  height: ManagerHeight.h40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ManagerAssets.outBoarding5),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h313,
                left: ManagerWidth.w21,
                child: Container(
                  width: ManagerWidth.w40,
                  height: ManagerHeight.h40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ManagerAssets.outBoarding6),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h313,
                left: ManagerWidth.w300,
                child: Container(
                  width: ManagerWidth.w100,
                  height: ManagerHeight.h100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage(ManagerAssets.outBoarding7),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ManagerHeight.h340,
                right: ManagerWidth.w144,
                child: Container(
                  width: ManagerWidth.w100,
                  height: ManagerHeight.h100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ManagerAssets.outBoarding8),
                  ),
                ),
              ),
              Positioned(
                  top: ManagerHeight.h500,
                  left: ManagerWidth.w100,
                  right: ManagerWidth.w68,
                  child: Text(
                    ManagerStrings.startShoppingWithUs,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s48,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  )),
              Positioned(
                  top: 650,
                  left: ManagerWidth.w0,
                  right: ManagerWidth.w0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      ManagerStrings.everythingTheArabFamilyNeedsShopAndEnjoy,
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s16,
                        fontWeight: ManagerFontWeight.w400,
                        color: ManagerColors.outBoardingTitleColor,
                      ),
                    ),
                  )),
              Positioned(
                  top: 720,
                  left: ManagerWidth.w0,
                  right: ManagerWidth.w0,
                  child: Container(
                    alignment: Alignment.center,
                    child: BaseButton(
                      onPressed: () {
                        controller.toAuth();
                      },
                      title: ManagerStrings.start,
                      width: ManagerWidth.w300,
                      height: ManagerHeight.h50,
                    ),
                  )),
            ],
          ),
        );
      }
    );
  }
}
