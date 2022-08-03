import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sooq_okaz/utils/helper/constant_color.dart';
import 'package:sooq_okaz/utils/helper/constant_size.dart';
import 'package:sooq_okaz/utils/helper/constant_style.dart';

import '../widget/custom_password_text_field.dart';
import '../widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void didChangeDependencies() {
    precacheImage(
        const CachedNetworkImageProvider(
          'https://c0.wallpaperflare.com/preview/865/340/836/women-fashion-portraits-emotion.jpg',
        ),
        context);
    super.didChangeDependencies();
  }

  late TextEditingController emailController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: ConstantSize.h75,
          bottom: ConstantSize.h50,
          right: ConstantSize.w36,
          left: ConstantSize.w36,
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Form(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: CachedNetworkImageProvider(
                      'https://c0.wallpaperflare.com/preview/865/340/836/women-fashion-portraits-emotion.jpg',
                    ),
                    radius: 60,
                  ),
                  SizedBox(
                    height: ConstantSize.h48,
                  ),
                  Text(
                    'تسجيل دخول',
                    style: ConstantStyle.blackLightBold,
                  ),
                  SizedBox(
                    height: ConstantSize.h10,
                  ),
                  Text(
                    '!مرحبا بعودتك',
                    style: ConstantStyle.regular,
                  ),
                  SizedBox(
                    height: ConstantSize.h75,
                  ),
                  CustomTextField(
                    lableText: 'البريد الإلكتروني',
                    icon: Icons.email,
                    controllerText: emailController,
                    validateFunction: (p0) => null,
                  ),
                  SizedBox(
                    height: ConstantSize.h50,
                  ),
                  CustomPasswordTextField(
                    lableText: 'كلمة المرور',
                    icon: Icons.lock,
                    controllerText: emailController,
                    validateFunction: (p0) => null,
                  ),
                  SizedBox(
                    height: ConstantSize.h10,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'هل نسيت كلمة المرور؟',
                        style: ConstantStyle.medium.copyWith(
                          fontSize: ConstantSize.sp12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ConstantSize.h60),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: ConstantSize.h20),
                        minimumSize: Size(double.infinity, ConstantSize.h48),
                        primary: ConstantColor.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                    onPressed: () {},
                    child: Text(
                      'تسجيل دخول',
                      style: ConstantStyle.extraBold.copyWith(
                        fontSize: ConstantSize.sp20,
                        color: ConstantColor.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ConstantSize.h10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'إذا كنت لاتمتلك حساب؟',
                        style: ConstantStyle.regular.copyWith(
                          fontSize: ConstantSize.sp12,
                        ),
                      ),
                      SizedBox(width: ConstantSize.w5,),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          'تسجيل جديد',
                          style: ConstantStyle.medium.copyWith(
                              fontSize: ConstantSize.sp12,
                              color: ConstantColor.primaryColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
