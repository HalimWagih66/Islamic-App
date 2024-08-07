import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void>showToast(
    {required String msg, required Color textColor, required Color backgroundColor})async{
  await Fluttertoast.showToast(msg: msg,textColor: textColor,backgroundColor: backgroundColor);
}