import 'package:shoeshop/views/constants.dart';
import 'package:shoeshop/views/widgets/text_file_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({Key? key, this.hintText, this.icon = Icons.person}) : super(key: key);
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
          child: TextFormField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: kPrimaryColor,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(fontFamily: 'OpenSans'),
              border: InputBorder.none,
            ),
          ),
    );
  }
}
