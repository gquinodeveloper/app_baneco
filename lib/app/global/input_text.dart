import 'package:app_baneco/app/core/theme/apptheme.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  InputText({
    this.isMoney = false,
    this.textAlign = TextAlign.start,
    this.initialValue,
    this.readOnly = false,
    this.controller,
    this.iconPrefix,
    this.iconColor,
    this.labelText,
    this.filled = true,
    this.fontColor,
    this.fontSize,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.hintText,
    this.minLines = 1,
    this.maxLines,
    this.maxLength = 70,
    this.border,
    this.onChanged,
    this.onTap,
    this.onSaved,
  });

  final bool isMoney;
  final TextAlign textAlign;
  final String? initialValue;
  final bool readOnly;
  final TextEditingController? controller;
  final IconData? iconPrefix;
  final Color? iconColor;
  final String? labelText;
  final bool? filled;
  final Color? fontColor;
  final double? fontSize;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final String Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final InputBorder? border;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign,
      textInputAction: TextInputAction.done,
      initialValue: initialValue,
      style: isMoney
          ? Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(color: fontColor, fontWeight: FontWeight.bold)
          : Theme.of(context).textTheme.button?.copyWith(color: fontColor),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        border: border,
        icon: iconPrefix != null
            ? Icon(
                iconPrefix,
                color: iconColor,
                size: 20.0,
              )
            : null,
        labelText: labelText,
        labelStyle: TextStyle(
          color: fontColor,
        ),
        filled: filled,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .4,
            color: enabledBorderColor ?? Colors.white,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor ?? Colors.white,
          ),
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: isMoney
            ? Theme.of(context).textTheme.headline3?.copyWith(
                color: fontColor!.withOpacity(0.3), fontWeight: FontWeight.bold)
            : null,
        counterText: "",
      ),
      readOnly: readOnly,
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      onTap: onTap,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      validator: validator,
    );
  }
}
