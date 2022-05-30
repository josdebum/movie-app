import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:movies_app_flutter/utils/constants.dart';

class CustomSearchAppbarContent extends StatelessWidget {
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;

  CustomSearchAppbarContent({this.onChanged, this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    return Padding (
        padding: EdgeInsets.all(14),
    child:Container(
      height: 8.0.h,
      color: kAppBarColor,
      child:
       ListTile(
         // leading: Icon(Icons.search),
          title: TextField(
           // autofillHints: "Find Movie",
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            style: kDrawerDescTextStyle,
            cursorColor: Colors.white,
            autofocus: true,
            autocorrect: false,
            textInputAction: TextInputAction.search,
            decoration: kTextFieldDecoration,
          ),
trailing: Icon(Icons.search) ,
        ),
      ),
      );
  }
}
