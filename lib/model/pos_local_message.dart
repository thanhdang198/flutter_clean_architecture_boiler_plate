import '../helper/scaffold_message.dart';

class POSLocalMessage {
  final String messageTitle;
  final String messageContent;
  final ToastType type;

  POSLocalMessage(
      {required this.messageTitle,
      required this.messageContent,
      required this.type});
}
