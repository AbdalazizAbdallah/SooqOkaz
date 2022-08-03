
import 'package:flutter/material.dart';
import 'package:sooq_okaz/utils/helper/constant_color.dart';
import 'package:sooq_okaz/utils/helper/constant_size.dart';

class ConstantStyle{

  static TextStyle styleLogo = TextStyle(
    fontFamily: 'loew',
    fontSize: ConstantSize.sp33,
    color: ConstantColor.primaryColor,
    fontWeight: FontWeight.w800,
  );
  static TextStyle extraBold = const TextStyle(
    fontFamily: 'loew',
    fontWeight: FontWeight.w800,
  );

  static TextStyle blackLightBold = TextStyle(
    fontFamily: 'loew',
    fontSize: ConstantSize.sp22,
    color: ConstantColor.blackLight,
    fontWeight: FontWeight.bold,
  );
  static TextStyle regular = TextStyle(
    fontFamily: 'loew',
    fontSize: ConstantSize.sp18,
    color: ConstantColor.black,
  );
  static TextStyle medium = TextStyle(
    fontFamily: 'loew',
    fontSize: ConstantSize.sp10,
    fontWeight: FontWeight.w600,
    color: ConstantColor.blackLight,
  );

}