//@dart=2.3
import 'package:chat/chat.dart';
import 'package:app_chat/data/datasources/datasource_contract.dart';
import 'package:app_chat/models/local_message.dart';
import 'package:app_chat/viewmodels/base_view_model.dart';

class ChatViewModel extends BaseViewModel {
  IDatasource _datasource;
  String _chatId = '';
  int otherMessages = 0;
  //String get chatId => _chatId;

  ChatViewModel(this._datasource) : super(_datasource);

  Future<List<LocalMessage>> getMessages(String chatId) async {
    final messages = await _datasource.findMessages(chatId);
    if (messages.isNotEmpty) _chatId = chatId;
    return messages;
  }

  Future<void> sentMessage(Message message) async {
    LocalMessage localMessage =
        LocalMessage(message.to, message, ReceiptStatus.sent);
     //  if (_chatId.isEmpty) _chatId = localMessage.chatId;
    if (localMessage.chatId != _chatId) otherMessages++;
    await addMessage(localMessage);
  }

  Future<void> receivedMessage(Message message) async {
    LocalMessage localMessage =
        LocalMessage(message.from, message, ReceiptStatus.deliverred);
    if (_chatId.isEmpty) _chatId = localMessage.chatId;
    if (localMessage.chatId != _chatId) otherMessages++;
    await addMessage(localMessage);
  }

  // Future<void> updateMessageReceipt(Receipt receipt) async {
  //   await _datasource.updateMessageReceipt(receipt.messageId, receipt.status);
  // }
}