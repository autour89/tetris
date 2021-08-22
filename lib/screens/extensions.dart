import 'package:flutter/material.dart';

extension Home on Widget {
  Widget withBox(
      {BoxDecoration? boxDecoration, double padding = 3, double margin = 3}) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: boxDecoration ??
          BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.red)),
      child: this,
    );
  }
}
