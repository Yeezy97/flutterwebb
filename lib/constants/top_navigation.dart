import 'package:flutter/material.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';
import 'package:flutterwebb/widgets/custom_text.dart';
import 'package:flutterwebb/constants/style.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsiveness.isSmallScreen(context)
          ? Image.asset(
              "assets/logo.png",
            )
          : IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: "Dash",
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            ),
            onPressed: (){
              // button function
            },
          ),
          Stack(
            children: [
              IconButton(icon: Icon(Icons.notifications,color: dark.withOpacity(.7),),
              onPressed: (){},),
              Positioned(
                top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height:12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)
                    ),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          SizedBox(
            width:24,
          ),
          CustomText(text:"SAD9 L3EBRI", color: lightGrey,),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark,),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),

    );
