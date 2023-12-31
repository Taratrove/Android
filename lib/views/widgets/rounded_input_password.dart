import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoeshop/views/constants.dart';
import 'package:shoeshop/views/widgets/text_file_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
          icon: Icon(
            Icons.lock,
          color: kPrimaryColor,
          ),
          hintText: "Password",
          hintStyle: TextStyle(fontFamily: 'OpenSans'),
          suffixIcon: Icon(
            Icons.visibility,
          color: kPrimaryColor,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
