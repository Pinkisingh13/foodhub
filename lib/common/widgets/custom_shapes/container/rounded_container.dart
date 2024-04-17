import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';


class PRoundedContainer extends StatelessWidget {
  const PRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.child,
    this.margin,
    this.backgroundColor = PColors.white,
    this.radius = PSizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = PColors.darkGrey
  });

  final double? width, height;
  final double radius;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;

  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder
            ? Border.all(
                color: borderColor,
              )
            : null,
      ),
      child: child,
    );
  }
}
