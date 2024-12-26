import 'package:flutter/material.dart';
import 'package:flutter_screen_task/views/widgets/custom_elevated_button.dart';
import 'package:flutter_screen_task/views/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                      width: 26.w,
                      height: 26.h,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: SvgPicture.asset(
                      'assets/icons/settings_icon.svg',
                      width: 26.w,
                      height: 26.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  width: 139.w,
                  height: 139.h,
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_pic.png'),
                  ),
                ),
                CircleAvatar(
                  radius: 19.w,
                  backgroundColor: const Color(0xFFEE8924),
                  child: GestureDetector(
                    onTap: () => {},
                    child: SvgPicture.asset(
                      'assets/icons/edit_icon.svg',
                      width: 18.w,
                      height: 18.h,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18.h),
            Text(
              'GFXAgency',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: const Color(0xFF262422),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'UI UX DESIGN',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: const Color(0xFFABABAB),
              ),
            ),
            SizedBox(height: 30.h),
            const CustomTextField(
              labelName: 'Your Email',
              hintText: 'xxx@gmail.com',
              icon: Icons.mail_outlined,
              isPhoneNumber: false,
              isPassword: false,
            ),
            SizedBox(height: 20.h),
            const CustomTextField(
              labelName: 'Phone Number',
              hintText: '+93123135',
              isPassword: false,
              isPhoneNumber: true,
              icon: Icons.phone_outlined,
            ),
            SizedBox(height: 20.h),
            const CustomTextField(
              labelName: 'Website',
              hintText: 'www.gfx.com',
              icon: Icons.web_outlined,
              isPassword: false,
              isPhoneNumber: false,
            ),
            SizedBox(height: 20.h),
            const CustomTextField(
              labelName: 'Password',
              hintText: 'www.gfx.com',
              icon: Icons.lock_outline_rounded,
              isPassword: true,
              isPhoneNumber: false,
            ),
            SizedBox(height: 50.h),
            const CustomElevatedButton(),
          ],
        ),
      ),
    );
  }
}
