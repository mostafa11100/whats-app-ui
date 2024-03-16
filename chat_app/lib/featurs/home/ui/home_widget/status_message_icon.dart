import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatusMessageIcon extends StatefulWidget {
  StatusMessageIcon({super.key, this.status});
  int? status = 1;

  @override
  State<StatusMessageIcon> createState() => _StatusMessageIconState();
}

class _StatusMessageIconState extends State<StatusMessageIcon> {
  @override
  Widget build(BuildContext context) {
    return widget.status! >= 1
        ? Row(
            children: [
              Visibility(
                visible: widget.status! >= 1 ? true : false,
                child: Icon(
                  Icons.check,
                  color: widget.status == 3
                      ? const Color.fromARGB(255, 1, 175, 255)
                      : const Color.fromARGB(255, 107, 107, 107),
                  size: 18,
                ),
              ),
              Visibility(
                visible: widget.status! >= 2 ? true : false,
                child: Icon(
                  Icons.check,
                  color: widget.status == 3
                      ? const Color.fromARGB(255, 1, 175, 255)
                      : const Color.fromARGB(255, 107, 107, 107),
                  size: 18,
                ),
              ),
            ],
          )
        : const Icon(
            Icons.wifi_tethering,
            size: 18,
          );
  }
}
