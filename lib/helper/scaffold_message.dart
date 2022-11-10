import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../model/pos_local_message.dart';
import '../style/style.dart';

enum ToastType { success, error, warning, greenSuccess }

showMessage(BuildContext context, String content, {Color? color}) {
  Size _size = MediaQuery.of(context).size;
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: transparent,
      elevation: 0,
      content: Container(
          alignment: Alignment.center,
          height: 52,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 14),
          margin: EdgeInsets.only(
              left: _size.width * 0.0773,
              right: _size.width * 0.0773,
              bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: color ?? black1),
          child: Text(
            content,
            style: bodyMedium.copyWith(color: white),
          ))));
}

showFlushBarMessage(
    {required BuildContext context, required POSLocalMessage message}) {
  showFlushBar(
      context: context,
      type: message.type,
      title: message.messageTitle,
      message: message.messageContent);
}

showFlushBar(
    {required BuildContext context,
    required ToastType type,
    required String title,
    required String message,
    int? seconds,
    Color? color}) {
  createToast(
          type: type,
          title: title,
          message: message,
          duration: Duration(seconds: seconds ?? 3))
      .show(context);
}

Flushbar createToast(
    {ToastType? type,
    String? title,
    String? message,
    bool? showMainButton,
    String? buttonLabel,
    Duration? duration,
    Flushbar? flushbar}) {
  flushbar?.dismiss();
  Color color = Colors.white;
  IconData icon = Icons.warning;
  final defaultMainButton = showMainButton ?? false;
  switch (type) {
    case ToastType.error:
      color = red;
      icon = Icons.error_outline;
      break;
    case ToastType.success:
      color = blueBrand;
      icon = Icons.done_all;
      break;
    case ToastType.warning:
      color = Colors.orangeAccent;
      break;
    case ToastType.greenSuccess:
      color = Colors.greenAccent;
      break;
    default:
      break;
  }
  return Flushbar(
    // title: "Hey Ninja",
    // message:
    //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.GROUNDED,
    reverseAnimationCurve: Curves.decelerate,
    // forwardAnimationCurve: Curves.elasticOut,
    backgroundColor: color,
    boxShadows: [
      BoxShadow(
          color: color.withOpacity(0.8),
          offset: const Offset(0.0, 2.0),
          blurRadius: 3.0)
    ],
    //  backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.black]),
    isDismissible: true,

    duration: duration,
    icon: Icon(
      icon,
      color: Colors.white,
      size: 30,
    ),
    mainButton: defaultMainButton
        ? ElevatedButton(
            style: brandStyle,
            onPressed: () {},
            child: Text(
              buttonLabel ?? "OK",
            ),
          )
        : null,
    // showProgressIndicator: true,
    titleText: Text(
      title ?? "",
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    messageText: Text(
      message ?? "",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 13,
      ),
    ),
  );
}
