
import 'package:flutter/material.dart';
import 'package:qcafe/Shared/widget/constants.dart';

import '../color/colors.dart';



class BoxTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obsecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
final String text;final String? itext;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? hintText;
  final Color? hintColor;
  final Color? fillColor;
 final IconData? icon;
  final Function(String)? onSaved;
  final IconData? prefix;
   final TextAlign textAlign;

  const BoxTextField({
    Key? key,
    this.controller,
    this.validator,
    this.obsecure = false,
    this.readOnly = false,
    this.onTap,
    this.onEditingCompleted,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.autofocus = false,
    this.enabled = true,
    this.errorText,
    this.hintText,
    this.hintColor,
    this.fillColor ,
    this.onSaved, required this.text, this.prefix, this.icon, this.itext, this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(text,style: TextStyle(
             fontWeight: FontWeight.w600, color: kgrey,fontSize: 14
          ),),
        ),
        TextFormField(
        
          textAlign:textAlign,
            onChanged: onChanged,
            onEditingComplete: onEditingCompleted,
            autofocus: autofocus,
            onTap: onTap,
            enabled: enabled,
            readOnly: readOnly,
            obscureText: obsecure,
            keyboardType: keyboardType,
            controller: controller,
            decoration: InputDecoration(
              labelText: itext,
              enabledBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: kwhite,width: 2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color:kwhite,width: 2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12.0),
              ),
              filled: true,
              fillColor: kwhite,
              hintText: hintText,
              errorText: errorText,
             hintStyle:  TextStyle(
             fontWeight: FontWeight.w600, color: kgrey,fontSize: 14
          ),
              contentPadding: EdgeInsets.all(12),
            //   suffixIcon: Icon(
            //   icon,
            //   color: kblack,
            // ),
            ),
            validator: validator),
            SizedBox(height: heightApp*0.01,)
      ],
    );
  }
}
