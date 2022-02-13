import 'package:flutter/material.dart';
import 'package:mezuri/commons/theme.dart';

abstract class UIUtils {
  // ignore: non_constant_identifier_names
  static Widget GradientBackground({required Widget child, Gradient? gradient}) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient ?? MezuriTheme.scaffoldGradientBackground,
      ),
      child: child,
    );
  }
}
