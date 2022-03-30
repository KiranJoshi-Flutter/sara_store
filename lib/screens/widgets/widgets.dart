import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';

buildAppBar(BuildContext context, String name) {
  return AppBar(
    titleSpacing: 0.0,
    elevation: 0.5,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kGradientPrimary,
            kGradientSecondary,
            kGradientTertiary,
          ],
        ),
      ),
    ),
    title: Text(
      name,
      style: appTextStyle(
        FontWeight.w500,
        20.0,
        Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
