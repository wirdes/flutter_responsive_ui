import 'package:flutter/material.dart';

enum ContainerEnum { mobile, desktop }

class ResponsiveContainer extends StatefulWidget {
  final Widget? mobileChild;
  final Widget? desktopChild;

  const ResponsiveContainer({
    Key? key,
    this.mobileChild,
    this.desktopChild,
  }) : super(key: key);

  static ContainerEnum type(BuildContext context) {
    return MediaQuery.of(context).size.width < 780
        ? ContainerEnum.mobile
        : ContainerEnum.desktop;
  }

  @override
  State<ResponsiveContainer> createState() => _ResponsiveContainerState();
}

class _ResponsiveContainerState extends State<ResponsiveContainer> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer.type(context) == ContainerEnum.mobile
        ? widget.mobileChild ?? Container()
        : widget.desktopChild ?? Container();
  }
}
