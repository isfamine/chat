//@dart=2.3
import 'package:app_chat/ui/widgets/home/chats/chats.dart';
import 'package:app_chat/ui/widgets/home/profile_image.dart';
// import 'package:chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:app_chat/states_management/home/chats_cubit.dart';
import 'package:app_chat/states_management/home/home_cubit.dart';
import 'package:app_chat/states_management/home/home_state.dart';
// import 'package:app_chat/states_management/message/message_bloc.dart';
//import 'package:app_chat/ui/pages/home/home_router.dart';
//import 'package:app_chat/ui/widgets/home/active/active_users.dart';
//import 'package:app_chat/ui/widgets/home/chats/chats.dart';
//import 'package:app_chat/ui/widgets/shared/header_status.dart';

class Home extends StatefulWidget {
   const Home();
  // final User me;
  // const Home(this.me);
  // final IHomeRouter router;
  // const Home(this.me, this.router);

  @override
  _HomeState createState() => _HomeState();
}
  class _HomeState extends State<Home> {
// class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  // User _user;
  @override
  void initState() {
    super.initState();
    //  context.read<ChatsCubit>().chats();
    context.read<HomeCubit>().activeUsers();
    // final user = User.fromJson({
    //   "id": "a8022936-bb24-47f4-afd8-6e84becd5681",
    //   "active": true,
    //   "photo_url": '',
    //   "last_seen": DateTime.now()
    // });

    // context.read<MessageBloc>().add(MessageEvent.onSubscribed(user));

    // _user = widget.me;
    // _initialSetup();
  }

  @override
  Widget build(BuildContext context) {
   // super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(         
           title: Container(
            width: double.maxFinite,
            child: Row(
              children: [
                ProfileImage(
         // title: HeaderStatus(_user.username, _user.photoUrl, true),
                     imageUrl: "https://picsum.photos/seed/picsum/200/300",
                                                   online: true,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                                  'Jess',
                                 style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('online',
                          style: Theme.of(context).textTheme.caption),
                    ),
                  ],
                )
              ],
            ),
          ),
          bottom: TabBar(
            indicatorPadding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Messages'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (_, state) => state is HomeSuccess
                            ? Text('Active(${state.onlineUsers.length})')
                            : Text('Active(0)')),
                  ),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
              Chats(),
            // Chats(_user, widget.router),
            // ActiveUsers(widget.router, _user),
          ],
        ),
      ),
    );
  }

  // _initialSetup() async {
  //   final user =
  //       (!_user.active) ? await context.read<HomeCubit>().connect() : _user;

  //   context.read<ChatsCubit>().chats();
  //   context.read<HomeCubit>().activeUsers(user);
  //   context.read<MessageBloc>().add(MessageEvent.onSubscribed(user));
  // }

  // @override
  // bool get wantKeepAlive => true;
}
