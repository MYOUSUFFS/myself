import 'package:my_package/src/appsize.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final double borderRadius;
  final Function(String)? onChanged;
  final Function()? onTab;
  final String? Function(String?)? validator;
  final bool isMandatory;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int maxLines;
  final int minLines;
  final TextCapitalization textCapitalization;
  final double width;
  final num dynamicWidth;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool enabled;
  final bool readOnly;

  const MyTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.borderRadius = 10.0,
    this.onChanged,
    this.onTab,
    this.validator,
    this.isMandatory = false,
    this.labelText,
    this.keyboardType,
    this.textInputAction,
    this.maxLines = 1,
    this.minLines = 1,
    this.textCapitalization = TextCapitalization.none,
    this.width = 0.2,
    this.dynamicWidth = .8,
    this.focusNode,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.enabled = true,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *
          (AppFlexSize().sizeTab(context) ? width : dynamicWidth),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        onChanged: onChanged,
        onTap: onTab,
        enabled: enabled,
        readOnly: readOnly,
        validator: validator ??
            (isMandatory
                ? (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required.';
                    }
                    return null;
                  }
                : null),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
          hintText: hintText,
          labelText: isMandatory ? '$labelText*' : labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        maxLines: maxLines,
        minLines: minLines,
        textCapitalization: textCapitalization,
      ),
    );
  }
}
