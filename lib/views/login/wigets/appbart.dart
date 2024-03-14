import 'package:flutter/material.dart';

AppBar buildAppbar({required BuildContext context}) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
    ),
    backgroundColor: Theme.of(context).colorScheme.onPrimary,
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(10),
      child: SizedBox.shrink(),
    ),
    title: Text(
      'Login',
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.bold),
    ),
  );
}
