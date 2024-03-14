import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appButton({
  required BuildContext context,
  required Function onPressed,
  String name = 'Button',
  Color? color,
  bool isDisabled = false,
}) {
  return ElevatedButton(
    onPressed: () {
      isDisabled ? null : onPressed();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: color ?? Theme.of(context).colorScheme.primary,
      shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      minimumSize: Size(375.w, 48.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      side: const BorderSide(
          color: Colors.transparent, width: 2.0, style: BorderStyle.solid),
      elevation: 7,
    ),
    child: Text(
      name,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: Theme.of(context).colorScheme.onPrimary),
    ),
  );
}
