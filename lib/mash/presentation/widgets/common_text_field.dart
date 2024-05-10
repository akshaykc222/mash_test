import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final bool? required;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? widgetLabel;
  final TextInputType? textInputType;
  final bool? enable;
  final bool? isCaps;
  final Function(String)? validator;
  final bool? passwordField;
  final int? lines;

  CommonTextField({
    super.key,
    required this.title,
    this.prefix,
    this.required,
    this.suffix,
    this.widgetLabel,
    this.enable,
    this.controller,
    this.validator,
    this.textInputType,
    this.passwordField,
    this.lines,
    this.isCaps = false,
  });

  final ValueNotifier<bool> showPasswordNotifier = ValueNotifier<bool>(true);
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showPasswordNotifier,
      builder: (context, showPassword, _) {
        return TextFormField(
          textCapitalization: TextCapitalization.sentences,
          style: const TextStyle(fontSize: 18),
          controller: controller,
          autovalidateMode: AutovalidateMode.always,
          validator: validator == null ? null : (val) => validator!(val ?? ""),
          focusNode: _focusNode,
          inputFormatters: isCaps == true
              ? [
                  UpperCaseTextFormatter(),
                ]
              : [],
          obscureText: passwordField == true ? showPassword : false,
          keyboardType: textInputType ?? TextInputType.text,
          maxLines: passwordField == true ? 1 : lines,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            prefixIcon: prefix,
            suffixIcon: passwordField == true
                ? IconButton(
                    onPressed: () {
                      showPasswordNotifier.value = !showPasswordNotifier.value;
                    },
                    icon: showPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : suffix,
            label: widgetLabel ??
                Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
            enabled: enable ?? true,
          ),
        );
      },
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
