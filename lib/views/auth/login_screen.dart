import 'package:shoeshop/views/auth/signup_screen.dart';
import 'package:shoeshop/views/constants.dart';
import 'package:shoeshop/views/widgets/rounded_icon.dart';
import 'package:shoeshop/views/widgets/rounded_input_field.dart';
import 'package:flutter/material.dart';

import '../components/page_title_bar.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../widgets/rounded_button.dart';
import '../widgets/rounded_input_password.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const Upside(imgUrl : "asset/background/bg1.png"),
                  const PageTitleBar(title:"Login your account"),
                  Padding(
                      padding: const EdgeInsets.only(top: 320.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 15,),
                            iconButton(context),
                            const SizedBox(height: 20,),
                            const Text("or use your email account",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            Form(
                                child: Column(
                                  children: [
                                    const RoundedInputField(
                                      hintText: "Email",
                                      icon:Icons.email,
                                    ),
                                    const RoundedPasswordField(),
                                    switchListTitle(),
                                    RoundedButton(
                                      text:"LOGIN",
                                      press: (){}
                                    ),
                                    const SizedBox(height: 10,),
                                    UnderPart(
                                      title: "Don't have a account?",
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const SignUpScreens()));
                                      },
                                      navigatorText: "Register here",
                                    ),
                                    const SizedBox(height: 20,),
                                    const Text(
                                      "Forgot password?",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }

  iconButton(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [

        ],
      );
  }

  switchListTitle() {
    return Padding(
        padding: const EdgeInsets.only(left: 50,right: 40),
    child: SwitchListTile(
      dense: true,
      title: const Text(
        'Remember Me',
        style: TextStyle(fontSize: 16,fontFamily: 'OpenSabs'),
      ),
      value: true,
      activeColor: kPrimaryColor,
      onChanged: (val){},
    ),
    );
  }
}
