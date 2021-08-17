// //@dart=2.3
// import 'package:bloc/bloc.dart';
// import 'package:app_chat/models/chat.dart';
// import 'package:app_chat/viewmodels/chats_view_model.dart';

// class ChatsCubit extends Cubit<List<Chat>> {
//   final ChatsViewModel viewModel;
//   ChatsCubit(this.viewModel) : super([]);

//   Future<void> chats() async {
//     final chats = await viewModel.getChats();
//     emit(chats);
//   }
// }