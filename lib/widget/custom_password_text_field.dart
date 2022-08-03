import 'package:flutter/material.dart';

import '../utils/helper/constant_color.dart';
import '../utils/helper/constant_size.dart';
import '../utils/helper/constant_style.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    Key? key,
    required this.lableText,
    required this.icon,
    required this.controllerText,
    required this.validateFunction,
  }) : super(key: key);

  final String lableText;
  final IconData icon;
  final TextEditingController controllerText;
  final String? Function(String?) validateFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstantSize.h75,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ConstantColor.grayLight, width: 1),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: ConstantColor.grayLight,
            ),
          ),
          const VerticalDivider(
            color: ConstantColor.grayLight,
            thickness: 1,
            indent: 8,
            endIndent: 8,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                validator: validateFunction,
                controller: controllerText,
                obscureText: true,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off_outlined,color: ConstantColor.blackLight,),
                  contentPadding: const EdgeInsets.all(5),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: lableText,
                  labelStyle: ConstantStyle.medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
