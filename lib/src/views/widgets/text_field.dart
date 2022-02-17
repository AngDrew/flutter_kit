import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/r.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
    this.label, {
    this.onChange,
    this.iconData,
    this.isPassword = false,
    this.inputType,
    this.onFinish,
    this.isOutlined = true,
    this.suffixText,
    this.isBoldStyle,
    this.onTap,
    this.controller,
    this.readOnly = false,
    this.hasNextFieldWithOnFinish = false,
    this.hasBottomPadding = false,
    this.showClearIcon = false,
    this.onClear,
    this.errorMsg,
  });

  final String label;
  final IconData? iconData;
  final void Function(String)? onChange;
  final void Function()? onFinish;
  final void Function()? onTap;
  final void Function()? onClear;
  final bool isPassword;
  final TextInputType? inputType;
  final bool isOutlined;
  final String? suffixText;
  final bool? isBoldStyle;
  final bool readOnly;
  final bool hasBottomPadding;

  /// check errorMsg, isRequired, regexRule, requiredErrorMsg.
  final TextEditingController? controller;

  final String? errorMsg;

  /// this attribute will be ignored if the field
  /// `has suffixText` or `isPassword`
  final bool showClearIcon;

  /// this attribute will be ignored if `onFinish()` is null
  final bool hasNextFieldWithOnFinish;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool isObscured = widget.isPassword;
  late bool hasNext = widget.onFinish == null;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: widget.hasBottomPadding
          ? R.spaces.betterSpaceBottom
          : EdgeInsets.zero,
      child: TextField(
        controller: widget.controller,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          border: widget.isOutlined
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              : const UnderlineInputBorder(),
          icon: widget.iconData != null
              ? Icon(
                  widget.iconData,
                  color: theme.textSelectionTheme.cursorColor,
                  // color: theme.backgroundColor,
                  size: ScreenUtil().setSp(20),
                )
              : null,
          suffixIcon: widget.isPassword
              ? SizedBox(
                  height: 48.sp,
                  width: 48.sp,
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () => setState(() {
                        isObscured = !isObscured;
                      }),
                    ),
                  ),
                )
              : widget.suffixText != null
                  ? SizedBox(
                      height: 48.sp,
                      width: 48.sp,
                      child: Center(
                        child: Text(
                          widget.suffixText!,
                          style: R.styles.normalFont.copyWith(
                            color: greyColor,
                          ),
                        ),
                      ),
                    )
                  : widget.showClearIcon
                      ? SizedBox(
                          height: 48.sp,
                          width: 48.sp,
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                widget.controller?.text = '';
                                widget.onClear?.call();
                                setState(() {});
                              },
                            ),
                          ),
                        )
                      : null,
          labelText: widget.label,
          labelStyle: R.styles.normalFont.copyWith(
            // fontWeight: FontWeight.bold,
            color: theme.colorScheme.onBackground,
          ),
          errorText: widget.errorMsg,
          errorStyle: R.styles.normalFont.copyWith(
            fontWeight: FontWeight.normal,
            color: theme.colorScheme.error,
          ),
          isDense: true,
          // contentPadding: widget.isOutlined
          //     ? null
          //     : const EdgeInsets.only(
          //         top: 0,
          //         bottom: 8,
          //         right: 0,
          //         left: 0,
          //       ),
        ),
        cursorColor: theme.textSelectionTheme.cursorColor,
        style: widget.isBoldStyle != null
            ? R.styles.normalFont.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              )
            : R.styles.normalFont.copyWith(
                color: theme.colorScheme.onBackground,
              ),
        obscureText: isObscured,
        keyboardType: widget.isPassword
            ? TextInputType.visiblePassword
            : widget.inputType ?? TextInputType.text,
        textInputAction: hasNext
            ? TextInputAction.next
            : widget.hasNextFieldWithOnFinish
                ? TextInputAction.next
                : TextInputAction.done,
        onEditingComplete: hasNext
            ? FocusScope.of(context).nextFocus
            : () {
                if (widget.hasNextFieldWithOnFinish) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).unfocus();
                }
                widget.onFinish!();
              },
        onChanged: widget.onChange,
        onTap: widget.onTap,
      ),
    );
  }
}
