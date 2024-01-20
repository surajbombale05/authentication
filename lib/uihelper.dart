import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextFormField(TextEditingController controller, String text, IconData iconData, bool toHide) {
    return TextField(
      controller: controller,
      obscureText: toHide,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: Icon(iconData),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
      ),
    );
  }

  static CustomButton(VoidCallback onPressed, String str) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        color: Colors.cyan,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
        onPressed: onPressed,
        child: Text(
          str,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  static CustomAlertBox(BuildContext context, String str) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(str),
        );
      },
    );
  }
}
