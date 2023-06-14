import 'package:shoeshop/views/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Upside extends StatelessWidget {
  const Upside({Key? key,required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height/2,
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
                imgUrl,
              alignment: Alignment.topCenter,
              scale: 1,
            ),
          ),
        ),
        iconBackButton(context),
        Positioned(
            child: Image.network("https://thienbang.com/wp-content/uploads/2021/10/icon-giay-bao-ho1.png",scale: 5,),
            top: 160,
            left: 0,
        ),
        Positioned(
          child: Image.network("https://heramo.com/assets/images/new-dry-cleaning/dry-icons/heramo-ve-sinh-giay-chat-luong.png",scale: 5,),
          top: 60,
          right: 0,
        ),
      ],
    );
  }

  iconBackButton(BuildContext context) {
    return IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
      color: Colors.white,
      iconSize: 28,
        icon: const Icon(CupertinoIcons.arrow_left),
    );
  }
}
