import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String labelName, hintText;
  final IconData icon;
  final bool isPassword;
  final bool isPhoneNumber;
  const CustomTextField({
    super.key,
    required this.labelName,
    required this.hintText,
    required this.icon,
    required this.isPassword,
    required this.isPhoneNumber,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelName,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: const Color(0xFF262422),
          ),
        ),
        SizedBox(
          width: 380.w,
          height: 65.h,
          child: TextField(
            cursorColor: Colors.black,
            keyboardType:
                widget.isPhoneNumber ? TextInputType.phone : TextInputType.text,
            obscureText: widget.isPassword ? _isObscured : false,
            decoration: InputDecoration(
              prefixIcon: Icon(
                widget.icon,
                size: 22.sp,
              ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: const Color(0xFFABABAB),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(
                  color: const Color(0xFFF1ECEC),
                  width: 1.w,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(
                  color: const Color(0xFFF1ECEC),
                  width: 1.w,
                ),
              ),
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                      child: Icon(
                        _isObscured
                            ? CupertinoIcons.eye_slash
                            : CupertinoIcons.eye,
                        size: 22.sp,
                        color: const Color(0xFFABABAB),
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
