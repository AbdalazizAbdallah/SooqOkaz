import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooq_okaz/routes.dart';
import 'package:sooq_okaz/utils/helper/constant_color.dart';
import 'package:sooq_okaz/utils/helper/constant_image.dart';
import 'package:sooq_okaz/utils/helper/constant_size.dart';

import '../utils/helper/constant_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, RouteGenerator.loginScreen);
      },
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(ConstantImage.logoSplachImage), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: ConstantSize.h160,
            child: Image.asset(ConstantImage.logoSplachImage),
          ),
          Text(
            'سوق عكاظ',
            textAlign: TextAlign.center,
            style: ConstantStyle.styleLogo,
          )
        ],
      ),
    );
  }
}
