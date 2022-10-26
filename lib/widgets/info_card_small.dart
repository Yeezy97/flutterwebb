import 'package:flutter/material.dart';
import 'package:flutterwebb/constants/style.dart';
import 'package:flutterwebb/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  const InfoCardSmall(
      {Key? key,this.isActive = false, this.onTap, this.value, this.title})
      : super(key: key);

  final String? title;
  final String? value;
  final bool isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border:
                Border.all(color: isActive ? active : lightGrey, width: .5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: title,
                  size: 24,
                  weight: FontWeight.w300,
                  color: isActive ? active : lightGrey),
              CustomText(
                  text: title,
                  size: 24,
                  weight: FontWeight.bold,
                  color: isActive ? active : lightGrey),
            ],
          ),
        ),
      ),
    );
  }
}
