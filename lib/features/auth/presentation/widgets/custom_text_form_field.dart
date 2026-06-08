import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.lable,
    required this.messageField,
    required this.isPassword,
  });

  final String lable;
  final String messageField;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: AppTextStyle.style400size16(
            context,
          ).copyWith(color: AppColors.blackColor),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withAlpha(8),
                  blurRadius: 10.0,
                  offset: Offset(0, 15),
                ),
              ],
            ),
            child: TextFormField(
              style: AppTextStyle.style400size14(
                context,
              ).copyWith(color: AppColors.blackColor),
              obscureText: isPassword,
              decoration: InputDecoration(
                fillColor: AppColors.whiteColor,
                filled: true,
                suffixIcon: isPassword
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility,
                          color: AppColors.grayColor,
                        ),
                      )
                    : null,
                hintText: messageField,
                hintStyle: AppTextStyle.style400size16(
                  context,
                ),
                focusedBorder: styleFieldBorder(),
                enabledBorder: styleFieldBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder styleFieldBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: AppColors.brightGrayColor,
    ),
  );
}
