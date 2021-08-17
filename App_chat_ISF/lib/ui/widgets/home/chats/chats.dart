// //@dart=2.3
// // import 'package:chat/chat.dart';
// // import 'package:intl/intl.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:app_chat/colors.dart';
// // import 'package:app_chat/models/chat.dart';
// // import 'package:app_chat/states_management/home/chats_cubit.dart';
// // import 'package:app_chat/states_management/message/message_bloc.dart';
// // import 'package:app_chat/states_management/typing/typing_notification_bloc.dart';
// import 'package:app_chat/theme.dart';
// //import 'package:app_chat/ui/pages/home/home_router.dart';
// import 'package:app_chat/ui/widgets/home/profile_image.dart';

// class Chats extends StatefulWidget {
//     const Chats();
//   // final User user;
//   // const Chats(this.user);
//   // final IHomeRouter router;
//   // const Chats(this.user, this.router);

//   @override
//   _ChatsState createState() => _ChatsState();
// }

// class _ChatsState extends State<Chats> {
//   // var chats = [];
//   // // final typingEvents = [];
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _updateChatsOnMessageReceived();
//   //   // context.read<ChatsCubit>().chats();
//   // }

//   @override
//   Widget build(BuildContext context) {
//   //   return BlocBuilder<ChatsCubit, List<Chat>>(builder: (__, chats) {
//   //     this.chats = chats;
//   //     // if (this.chats.isEmpty) return Container();
//   //     // context.read<TypingNotificationBloc>().add(
//   //     //     TypingNotificationEvent.onSubscribed(widget.user,
//   //     //         usersWithChat: chats.map((e) => e.from.id).toList()));
//   //     return _buildListView();
//   //   });
//   // }

//   // _buildListView() {
//     return ListView.separated(
//         padding: EdgeInsets.only(top: 30.0, right: 16.0),
//          itemBuilder: (_, indx) => _chatItem(),
//        // itemBuilder: (_, indx) => _chatItem(chats[indx]),
//         // itemBuilder: (_, indx) => GestureDetector(
//         //       child: _chatItem(chats[indx]),
//         //       onTap: () async {
//         //         await this.widget.router.onShowMessageThread(
//         //             context, chats[indx].from, widget.user,
//         //             chatId: chats[indx].id);

//               //  await context.read<ChatsCubit>().chats();
//               // context, chats[indx].from, widget.user,
//               //       chatId: chats[indx].id);
              
//             //   },
//             // ),
//         separatorBuilder: (_, __) => Divider(),
//         itemCount: 3);
//        // itemCount: chats.length);
//   }
// _chatItem() => ListTile(
//   // _chatItem(Chat chat) => ListTile(
//         contentPadding: EdgeInsets.only(left: 16.0),
//         leading: ProfileImage(
//            imageUrl: "https://picsum.photos/seed/picsum/200/300",
//           online: true,
//           // imageUrl: chat.from.photoUrl,
//           // online: chat.from.active,
//         ),
//         title: Text(
//         'Lisa',
//           // chat.from.username,
//           style: Theme.of(context).textTheme.subtitle2.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: isLightTheme(context) ? Colors.black : Colors.white,
//               ),
//         ),
//         subtitle: Text(
//           'Thank you so much',
//           // chat.mostRecent.message.contents,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           softWrap: true,
//           style: Theme.of(context).textTheme.overline.copyWith(
//              color: isLightTheme(context) ? Colors.black54 : Colors.white70,
//               ),
//         //       color: isLightTheme(context) ? Colors.black54 : Colors.white70,
//         //       fontWeight:
//         //           chat.unread > 0 ? FontWeight.bold : FontWeight.normal),
//          ),
//         // subtitle: BlocBuilder<TypingNotificationBloc, TypingNotificationState>(
//         //     builder: (__, state) {
//         //   if (state is TypingNotificationReceivedSuccess &&
//         //       state.event.event == Typing.start &&
//         //       state.event.from == chat.from.id)
//         //     this.typingEvents.add(state.event.from);

//         //   if (state is TypingNotificationReceivedSuccess &&
//         //       state.event.event == Typing.stop &&
//         //       state.event.from == chat.from.id)
//         //     this.typingEvents.remove(state.event.from);

//         //   if (this.typingEvents.contains(chat.from.id))
//         //     return Text('typing...',
//         //         style: Theme.of(context)
//         //             .textTheme
//         //             .caption
//         //             .copyWith(fontStyle: FontStyle.italic));

//         //   return Text(
//         //     chat.mostRecent.message.contents,
//         //     maxLines: 2,
//         //     overflow: TextOverflow.ellipsis,
//         //     softWrap: true,
//         //     style: Theme.of(context).textTheme.overline.copyWith(
//         //         color: isLightTheme(context) ? Colors.black54 : Colors.white70,
//         //         fontWeight:
//         //             chat.unread > 0 ? FontWeight.bold : FontWeight.normal),
//         //   );
//         // }),
//         trailing: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Text(
//                '12pm',
//               // DateFormat('h:mm a').format(chat.mostRecent.message.timestamp),
//               style: Theme.of(context).textTheme.overline.copyWith(
//                     color:
//                         isLightTheme(context) ? Colors.black54 : Colors.white70,
//                   ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0),
//                                 child: Container(
//                   height: 15.0,
//                   width: 15.0,
//                   color: kPrimary,
//                   alignment: Alignment.center,
//                   child: Text(
//                     '2',
//                     style: Theme.of(context)
//                         .textTheme
//                         .overline
//                         .copyWith(color: Colors.white),
//                   ),
//                 ),
//                 // child: chat.unread > 0
//                 //     ? Container(
//                 //         height: 15.0,
//                 //         width: 15.0,
//                 //         color: kPrimary,
//                 //         alignment: Alignment.center,
//                 //         child: Text(
//                 //           chat.unread.toString(),
//                 //           style: Theme.of(context)
//                 //               .textTheme
//                 //               .overline
//                 //               .copyWith(color: Colors.white),
//                 //         ),
//                 //       )
//                 //       : Container(),
//                     //: SizedBox.shrink(),
//               ),
//             )
//           ],
//         ),
//       );

//   // _updateChatsOnMessageReceived() {
//   //   final chatsCubit = context.read<ChatsCubit>();
//   //   context.read<MessageBloc>().stream.listen((state) async {
//   //     if (state is MessageReceivedSuccess) {
//   //       await chatsCubit.viewModel.receivedMessage(state.message);
//   //       chatsCubit.chats();
//   //     }
//   //   });
//   // }
// }
