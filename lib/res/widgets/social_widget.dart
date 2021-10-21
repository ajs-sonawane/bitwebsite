import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _circleWidget(FeatherIcons.facebook, () {}),
          SizedBox(height: 20),
          _circleWidget(FeatherIcons.linkedin, () {}),
          SizedBox(height: 20),
          _circleWidget(FeatherIcons.twitter, () {}),
        ],
      ),
    );
  }

  Widget _circleWidget(icon, onTap) {
    return InkWell(
      child: CircleAvatar(
        // radius: 6,
        backgroundColor: Colors.black26,
        child: Icon(icon,size: Get.size.height*0.02,color: Colors.white,),
      ),
      onTap: onTap,
    );
  }
}
