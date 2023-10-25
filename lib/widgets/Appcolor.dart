import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? safeareacolor;
  final Color? color2;
  final Color? color3;
  const AppColors({
    required this.safeareacolor,
    required this.color2,
    required this.color3,
  });

  @override
  AppColors copyWith({
    Color? color1,
    Color? color2,
    Color? color3,
  }) {
    return AppColors(
        safeareacolor: color1 ?? this.safeareacolor,
        color2: color2 ?? this.color2,
        color3: color3 ?? this.color3);
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    // TODO: implement lerp
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      safeareacolor: Color.lerp(safeareacolor, other.safeareacolor, t),
      color2: Color.lerp(color2, other.color2, t),
      color3: Color.lerp(color3, other.color3, t),
    );
  }
}
