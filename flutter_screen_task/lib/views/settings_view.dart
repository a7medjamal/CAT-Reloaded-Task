import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 69.h,
              left: 24.w,
              right: 24.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => {},
                  child: SvgPicture.asset(
                    'assets/icons/arrow_left.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                GestureDetector(
                  onTap: () => {},
                  child: SvgPicture.asset(
                    'assets/icons/settings_icon.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(
              right: 118.w,
              left: 118.w,
              top: 24.h,
            ),
            child: SizedBox(
              width: 139.w,
              height: 139.h,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_pic.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
