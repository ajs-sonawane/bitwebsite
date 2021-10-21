import 'package:bit_web/res/widgets/social_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideWhiteBannerWidget extends StatelessWidget {
  const SideWhiteBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height,
      width: Get.size.width * 0.055,
      color: Colors.white,
      child: SocialWidget(),
    );
  }
}
