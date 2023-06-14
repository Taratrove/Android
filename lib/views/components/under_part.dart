import 'package:shoeshop/views/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnderPart extends StatelessWidget {
  const UnderPart({Key? key,required this.title,required this.navigatorText,required this.onTap}) : super(key: key);
  final String title;
  final String navigatorText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            title,
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20,),
        InkResponse(
          onTap: (){
            onTap!();
          },
          child: Text(
            navigatorText,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            fontFamily: 'OpenSans',
          ),
          ),
        )
      ],
    );
  }
}
