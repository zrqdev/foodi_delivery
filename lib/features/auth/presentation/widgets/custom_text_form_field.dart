import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.lable,
    required this.messageField,
    required this.isPassword,
    required this.messageValidation,
    this.isEmail = false,
  });

  final String lable;
  final String messageField;
  final bool isPassword;
  bool isEmail;
  final String messageValidation;

  @override
  State<CustomTextFormField> createState() =>
      _CustomTextFormFieldState();
}

class _CustomTextFormFieldState
    extends State<CustomTextFormField> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isValid;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable,
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
              controller: _textEditingController,
              validator: (value) {
                if (value!.isEmpty) {
                  return widget.messageValidation;
                }

                if (widget.isEmail) {
                  isValid = EmailValidator.validate(value);

                  if (!isValid) {
                    return AppStrings
                        .emailValidMessageError;
                  }
                }

                return null;
              },
              style: AppTextStyle.style400size14(
                context,
              ).copyWith(color: AppColors.blackColor),
              obscureText: widget.isPassword,
              decoration: InputDecoration(
                fillColor: AppColors.whiteColor,
                filled: true,
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility,
                          color: AppColors.grayColor,
                        ),
                      )
                    : null,
                hintText: widget.messageField,
                hintStyle: AppTextStyle.style400size16(
                  context,
                ),
                errorStyle: AppTextStyle.style400size14(
                  context,
                ).copyWith(color: AppColors.errorColor),
                focusedBorder: styleFieldBorder(),
                enabledBorder: styleFieldBorder(),
                focusedErrorBorder: styleFieldBorderError(),
                errorBorder: styleFieldBorderError(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder styleFieldBorderError() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1.2,
        color: AppColors.errorColor,
      ),
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
